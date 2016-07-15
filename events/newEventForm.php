<?php include '../konfiguracija.php';?>
<?php include_once "../header.php"; ?>
<?php if(!isset($_SESSION["userData"])){
	header("location: ../logout.php");
}?>
<div class="row content">

<div class="single_post" style="text-align: center;">
	<h1>Dodaj događaj</h1>
</div>
<div class="col-md-offset-2 col-md-8 dodaj_dogadaj">
	<form class="form-horizontal" role="form">
	
			  <div class="form-group">
				    <h3> Osnovne informacije </h3>
					<hr/>
			    <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
					
					
					<div class="col-sm-12">
						<label for="eventTitle"> Naziv događaja* </label>
						<input type="text" class="form-control" id="eventTitle">
					</div>

					<div class="col-sm-12">
						<label for="eventDescription"> Opis događaja* </label>
						<textarea type="text" class="form-control" id="eventDescription"></textarea>
					</div>

					<div class="col-sm-12">
			    	  <label for="category">Kategorija događaja*</label>
					  <select class="form-control" id="category">
					    <option value="Zdravlje">Zdravlje</option>
					    <option value="Zabava">Zabava</option>
						<option value="Posao">Posao</option>
						<option value="Kultura">Kultura</option>
						<option value="Obrazovanje">Obrazovanje</option>
						<option value="Sport">Sport</option>
					  </select>
					 </div>

					 <div class="col-sm-8">
						  <label for="eventAddressSelect"> Lokacija događaja* </label>
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
					</div>
					<div class="col-sm-4">
						<label for="eventAddressSelectNum"> Kućni broj* </label>
						<input type="text" class="form-control" id="eventAddressSelectNum" />
					</div>

					<div class="col-sm-12">
					<label for="eventAddressCustom"> Ako lokacija nije u izborniku gore, ovdje upišite adresu </label>
						<input type="text" class="form-control" id="eventAddressCustom" placeholder="npr. Duga ulica 7">
					</div>
					
					<div class="col-sm-12">
						<label for="url"> Vanjski izvor (poveznica) </label>
						<input type="text" class="form-control" id="url">
					</div>
					
					
				</div>
				
				
			  </div>
				

			  <div class="form-group">
				<h3> Vrijeme održavanja, cijena i slika </h3>
				<hr/>
				<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
				
					<div class="col-sm-6">
						<label for="startDate"> Datum početka* </label>
						<input type="text" class="form-control date" id="startDate" style="width: 100%">
					</div>
					<div class="col-sm-6">
						<label for="endDate"> Datum završetka* </label>
						<input type="text" class="form-control date" id="endDate" style="width: 100%">
					</div>
					
					<div class="col-sm-6">
						<label for="startTime"> Vrijeme početka </label>
						<input type="text" class="form-control date"  id="startTime" style="width: 100%">
					</div>
					<div class="col-sm-6">
						<label for="endTime"> Vrijeme završetka </label>
						<input type="text" class="form-control date"  id="endTime" style="width: 100%">
					</div>
					
					<div class="col-sm-6">
						<label for="price"> Cijena u kunama </label>
						<div class="input-group" style="z-index: -70">
							<div class="input-group-addon">kn</div>
							<input type="text" class="form-control" id="price" placeholder="npr. 19.99">
						</div>
					</div>
					
					<div class="col-sm-6">
						<label for="pic"> Slika događaja </label>
						<input type="file" id="pic">
					</div>

				</div>
			  </div>
			  <hr/>
			  <div class="form-group"> 
			    <div class="col-sm-12" style="text-align: center;">
			      <button id="addEvent" class="btn btn-default">Dodaj događaj</button>
			    </div>
			  </div>
	</form>
</div>

</div>

<?php include_once "../footer.php"; ?>
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
	var organizer = "<?php echo $_SESSION["userData"]->id;?>";
	
	var price = $("#price").val();
	var price = price.replace(",", ".");
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
	if(endTime=="" || startTime=="" || eventTitle=="" || eventDescription=="" || eventAddress=="" || startDate=="" || endDate==""){
		alert("Svi podaci moraju biti popunjeni osim vanjske poveznice");
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
				data: "name=" + eventTitle + "&description=" + eventDescription + "&location=" + eventAddress + "&category=" + category + "&price=" + price + "&organizer=" + organizer + "&start_day=" + startDay + "&start_month=" + startMonth + "&start_year=" +  startYear + "&finish_day=" + endDay + "&finish_month=" + endMonth + "&finish_year=" + endYear + "&pic_extension=null" + "&startTime=" + startTime + "&endTime=" + endTime + "&url=" + url,
				dataType: 'text'
			}).done(function(rezultat) {
				if(rezultat!="NO"){
					window.location.href="singleEvent.php?id=" + rezultat;
				}else{
					alert("Došlo je do pogreške prilikom unosa događaja. Pokušajte ponovo.");
				}				
			});
	return false;	
});
</script>