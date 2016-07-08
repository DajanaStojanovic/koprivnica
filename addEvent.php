<?php include 'konfiguracija.php';?>
<?php include_once "header.php"; ?>
<?php if(!isset($_SESSION["userData"])){
	header("location: odjava.php");
}?>
<div class="row content">
<div class="col-md-12">
	<h1>Dodaj vijest</h1>

	<form class="form-horizontal" role="form">
			  <div class="form-group">
			    <div class="col-sm-12">
			    	<input type="text" class="form-control" id="eventTitle" placeholder="Naslov događaja">
			  </div>
			  </div>

			  <div class="form-group">
			    <div class="col-sm-12">
			    	<textarea type="text" class="form-control" id="eventDescription" placeholder="Opis događaja"></textarea>
			  </div>
			  </div>

			  <div class="form-group">
			   <div class="col-sm-12">
			    	<select class="form-control" id="eventAddressSelect">
						<option value="" selected> Odaberite ulicu </option>
						<?php 
						$streets = $veza->prepare("select * from streetnames order by name");
						$streets->execute();
						$allStreets = $streets->fetchAll(PDO::FETCH_OBJ);
						
						foreach($allStreets as $str):?>
						<option value="<?php echo $str->name;?>"> <?php echo $str->name;?> </option>
						<?php endforeach;?>
					</select>
					<input type="text" id="eventAddressSelectNum" placeholder="Kućni broj" />
			  </div>
			  </div>
			  
			  <!-- AKO ŽELI SPECIFICIRATI DRUGAČIJU LOKACIJU -->
			  <div class="form-group">
			   <div class="col-sm-12">
			    	<input type="text" class="form-control" id="eventAddressCustom" placeholder="Mjesto događaja - npr. Duga ulica 7">
			  </div>
			  </div>

			 <div class="form-group">
			    <div class="col-sm-12">
			    	  <label for="category">Kategorija događaja:</label>
					  <select class="form-control" id="category">
					    <option value="Zdravlje">Zdravlje</option>
					    <option value="Zabava">Zabava</option>
						<option value="Posao">Posao</option>
						<option value="Kultura">Kultura</option>
						<option value="Obrazovanje">Obrazovanje</option>
						<option value="Sport">Sport</option>
					  </select>
			  </div>
			  </div>

			  <p>Početak događaja: <input type="text" id="startDate"></p>
			  <p>Kraj događaja: <input type="text" id="endDate"></p>
			
			<div class="form-group">
			   <div class="col-sm-12">
			    	<input type="number" class="form-control" id="price" placeholder="Cijena ulaza u kunama">
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
	var eventAddressCustom = $.trim($("#eventAddressCustom").val());
	if(eventAddressCustom==""){
		var eventAddress = $.trim($("#eventAddressSelect").val() + " " + $("#eventAddressSelectNum").val());
	}else{
		var eventAddress = eventAddressCustom;
	}
	var category = $("#category").val();
	var organizer = "<?php echo $_SESSION["userData"]->username;?>";
	
	var price = $("#price").val();
	
	var startDate = $("#startDate").val();
	var startDay = startDate.split("/")[1];
	var startMonth = startDate.split("/")[0];
	var startYear = startDate.split("/")[2];
	
	var endDate = $("#endDate").val();
	var endDay = endDate.split("/")[1];
	var endMonth = endDate.split("/")[0];
	var endYear = endDate.split("/")[2];
	
	if(eventTitle=="" || eventDescription=="" || eventAddress=="" || startDate=="" || endDate=="" || price==""){
		alert("Svi podaci moraju biti popunjeni");
		return false;
	}
	if( (new Date(startDate).getTime() > new Date(endDate).getTime()))
	{
		alert("Datum završetka događaja ne može biti ispred početka događaja!");
		return false;
	}
	$.ajax({
				type: 'POST',
				url: 'newEvent.php',
				data: "name=" + eventTitle + "&description=" + eventDescription + "&location=" + eventAddress + "&category=" + category + "&price=" + price + "&organizer=" + organizer + "&start_day=" + startDay + "&start_month=" + startMonth + "&start_year=" +  startYear + "&finish_day=" + endDay + "&finish_month=" + endMonth + "&finish_year=" + endYear + "&pic_extension=null",
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