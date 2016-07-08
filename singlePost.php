<?php include 'konfiguracija.php';?>
<?php
$event = $veza->prepare("select * from event where id=:id");
$event->bindParam(":id", $_GET["id"]);
$event->execute();
$singleEvent = $event->fetch(PDO::FETCH_OBJ);
?>
<?php include_once "header.php"; ?>

<div class="single_post" style="text-align: center;">
	<h1><?php echo $singleEvent->name;?></h1>
</div>


<div class="row single_post_content">


	<div class="col-md-8 single_post_description">
		<?php echo $singleEvent->description;?>
	
	<br/>
	<div class="single_post_location">Lokacija: <strong><?php echo $singleEvent->location;?></strong></div>

	<div class="single_post_day">Početak: <strong><?php echo $singleEvent->start_day . "." . $singleEvent->start_month . ".</strong> u <strong>" . $singleEvent->start_time . "</strong>  sati<br />Završetak: <strong>" . $singleEvent->finish_day . "." . $singleEvent->finish_month . ".</strong> u <strong>" . $singleEvent->finish_time;?></strong> sati</div>
		<?php if (!empty($singleEvent->price)) {
		?>
		    <p>Cijena događaja: <strong><?php echo $singleEvent->price;?> </strong></p>
		<?php
		} else { echo "Događaj je besplatan";}; ?>

</div>
	<div class="col-md-4">
	<?php if(isset($singleEvent->pic_extension)):?>
		<img src="<?php echo $put;?>images/<?php echo $singleEvent->pic_extension;?>" alt="Slika vijesti" class="img-responsive post_image" /> 
		<?php else:?>
		<img src="images/placeholder.png" />
	<?php endif;?>
	</div>
</div>
<div class="row" id="location">
	<h1 class="single_post_location_title"> Lokacija događaja </h1>
</div>

	<div id="mapwrap" style="width: 75%; height: 75%;">
		<div id="map"></div>
	</div>
	<br/>
<?php include_once "footer.php"; ?>
<script>
//GOOGLE MAPS
	function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: {lat: 46.164114, lng: 16.830127}
        });
        var geocoder = new google.maps.Geocoder();
			geocodeAddress(geocoder, map);
          

      }

      function geocodeAddress(geocoder, resultsMap) {
		  <?php 
		  $location = $veza->prepare("select location from event where id=:id");
		  $location->bindParam(":id", $_GET["id"]);
		  $location->execute();
		  $marker = $location->fetchColumn();
		  ?>
			var address = "<?php echo $marker;?>";
				geocoder.geocode({'address': address}, function(results, status) {
			  if (status === google.maps.GeocoderStatus.OK) {
				resultsMap.setCenter(results[0].geometry.location);
				var marker = new google.maps.Marker({
				  map: resultsMap,
				  position: results[0].geometry.location
				});
			  } else {
				$("#location").hide();
				$("#mapwrap").hide();
				$("#map").hide();
			  }
			});
      }
</script>
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBOCim7sdyd7HCXCVDAKE3p5mvufO8xkDc&callback=initMap">
</script>
