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
	
</div>
	<div class="col-md-4">
	<?php if(isset($singleEvent->pic_extension)):?>
		<img src="<?php echo $put;?>images/<?php echo $singleEvent->id;?>.<?php echo $singleEvent->pic_extension;?>" alt="Slika vijesti" class="img-responsive post_image" /> 
		<?php else:?>
		<img src="images/placeholder.png" />
		<?php endif;?>
	</div>
</div>
<?php include_once "footer.php"; ?>