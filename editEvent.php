<?php include 'konfiguracija.php';?>
<?php include_once "header.php";

$event = $veza->prepare("select * from event where id=:id");
$event->bindParam(":id", $_GET["id"]);
$event->execute();
$getEvent = $event->fetch(PDO::FETCH_OBJ);

 if(!isset($_SESSION["userData"])){
	header("location: odjava.php");
}else{
	if($_SESSION["userData"]->type!=1 || $_SESSION["userData"]->id!=$getEvent->organizer){
		header("location: odjava.php");
	}
}
?>
<div class="row content">

<div class="single_post" style="text-align: center;">
	<h1>Dodaj događaj</h1>
</div>
<div class="col-md-offset-2 col-md-8 dodaj_dogadaj">
	<form class="form-horizontal" role="form">
			  <div class="form-group">
			    <div class="col-sm-12">
			    	<input type="text" class="form-control" id="eventTitle" placeholder="Naslov događaja" value="<?php echo $getEvent->name;?>">
			  </div>
			  </div>

			  <div class="form-group">
			    <div class="col-sm-12">
			    	<textarea type="text" class="form-control" id="eventDescription" placeholder="Opis događaja"><?php echo $getEvent->description;?></textarea>
			  </div>
			  </div>
			  
			  
			  <div class="form-group">
			   <div class="col-sm-12">
			    	<input type="text" class="form-control" id="eventAddressCustom" placeholder="Mjesto događaja - npr. Duga ulica 7" value="<?php echo $getEvent->location;?>">
			  </div>
			  </div>

			 <div class="form-group">
			    <div class="col-sm-12">
			    	  <label for="category">Kategorija događaja:</label>
					  <select class="form-control" id="category">
					    <option value="Zdravlje" <?php if($getEvent->category=="Zdravlje"){echo "selected";}?>>Zdravlje</option>
					    <option value="Zabava" <?php if($getEvent->category=="Zabava"){echo "selected";}?>>Zabava</option>
						<option value="Posao" <?php if($getEvent->category=="Posao"){echo "selected";}?>>Posao</option>
						<option value="Kultura" <?php if($getEvent->category=="Kultura"){echo "selected";}?>>Kultura</option>
						<option value="Obrazovanje" <?php if($getEvent->category=="Obrazovanje"){echo "selected";}?>>Obrazovanje</option>
						<option value="Sport" <?php if($getEvent->category=="Sport"){echo "selected";}?>>Sport</option>
					  </select>
			  </div>
			  </div>

			  <p>Početak događaja: <input type="text" class="form-control date" id="startDate" value="<?php echo $getEvent->start_month . "/" . $getEvent->start_day . "/" . $getEvent->start_year ;?>"></p>
			  <p>Od koliko sati: <input type="number" class="form-control date" id="startTime" min="0" max="23" value="<?php echo $getEvent->start_time;?>"></p>
			  <p>Kraj događaja: <input type="text" class="form-control date" id="endDate" value="<?php echo $getEvent->finish_month . "/" . $getEvent->finish_day . "/" . $getEvent->finish_year ;?>"></p>
			  <p>Do koliko sati: <input type="number" class="form-control date" id="endTime" min="0" max="24" value="<?php echo $getEvent->finish_time;?>"></p>
			
			<div class="form-group">
			   <div class="col-sm-12">
			    	<input type="number" class="form-control" id="price" placeholder="Cijena ulaza u kunama" value="<?php echo $getEvent->price;?>">
			  </div>
			  </div>
			  
			<div class="form-group">
			   <div class="col-sm-12">
			    	<input type="text" class="form-control" id="url" placeholder="Vanjski izvor (poveznica)" value="<?php echo $getEvent->url;?>">
			  </div>
			  </div>
			  
			  <div class="form-group"> 
			    <div class="col-sm-12">
			      <button id="addEvent" class="btn btn-default">Dodaj događaj</button>
			    </div>
			  </div>
	</form>
</div>

</div>

<?php include_once "footer.php"; ?>
<script>
  $(function() {
    $( "#startDate" ).datepicker();
  });
  $(function() {
    $( "#endDate" ).datepicker();
  });

$("#addEvent").click(function(){
	var eventTitle = $.trim($("#eventTitle").val());
	var eventDescription = $.trim($("#eventDescription").val());
	var eventAddress = $.trim($("#eventAddressCustom").val());
	var category = $("#category").val();
	var organizer = "<?php echo $_SESSION["userData"]->id;?>";
	
	var price = $("#price").val();
	var url= $("#url").val();
	
	var startDate = $("#startDate").val();
	var startDay = startDate.split("/")[1];
	var startMonth = startDate.split("/")[0];
	var startYear = startDate.split("/")[2];
	var startTime = $("#startTime").val();
	
	var endDate = $("#endDate").val();
	var endDay = endDate.split("/")[1];
	var endMonth = endDate.split("/")[0];
	var endYear = endDate.split("/")[2];
	var endTime = $("#endTime").val();
	if(endTime=="" || startTime=="" || eventTitle=="" || eventDescription=="" || eventAddress=="" || startDate=="" || endDate=="" || price==""){
		alert("Svi podaci moraju biti popunjeni osim vanjske poveznice");
		return false;
	}
	if( (new Date(startDate).getTime() > new Date(endDate).getTime()))
	{
		alert("Datum završetka događaja ne može biti ispred početka događaja!");
		return false;
	}
	if(startTime >= 24 || endTime > 24){
		alert("Vrijeme početka ili završetka nisu pravilno unešeni.");
		return false;
	}
	$.ajax({
				type: 'POST',
				url: 'updateEvent.php',
				data: "name=" + eventTitle + "&description=" + eventDescription + "&location=" + eventAddress + "&category=" + category + "&price=" + price + "&organizer=" + organizer + "&start_day=" + startDay + "&start_month=" + startMonth + "&start_year=" +  startYear + "&finish_day=" + endDay + "&finish_month=" + endMonth + "&finish_year=" + endYear + "&pic_extension=null" + "&startTime=" + startTime + "&endTime=" + endTime,
				dataType: 'text'
			}).done(function(rezultat) {
				if(rezultat!="NO"){
					window.location.href="singlePost.php?id=" + rezultat;
				}else{
					alert("Došlo je do pogreške prilikom unosa događaja. Pokušajte ponovo.");
				}				
			});
	return false;	
});
</script>