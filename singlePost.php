<?php include 'konfiguracija.php';?>
<?php
$event = $veza->prepare("select * from event where id=:id");
$event->bindParam(":id", $_GET["id"]);
$event->execute();
$singleEvent = $event->fetch(PDO::FETCH_OBJ);
?>
<?php include_once "header.php"; ?>

<img src="<?php echo $put;?>images/<?php echo $singleEvent->category;?>.jpg" alt="Slika kategorije" class="category_img" />

<div class="post_name"><h1><?php echo $singleEvent->name;?></h1></div>

<div class="row content">
	<div class="col-md-3">
	<?php if(isset($singleEvent->pic_extension)):?>
		<img src="<?php echo $put;?>images/<?php echo $singleEvent->id;?>.<?php echo $singleEvent->pic_extension;?>" alt="Slika vijesti" class="img-responsive post_image" /> 
	<?php endif;?>
	</div>

	<div class="col-md-9">
		<?php echo $singleEvent->description;?>
	</div>
	<br/>
	<?php echo $singleEvent->location;?>
	<br/>
	<?php echo $singleEvent->start_day . "." . $singleEvent->start_month . ". : " . $singleEvent->start_time . " - " . $singleEvent->finish_day . "." . $singleEvent->finish_month . ". : " . $singleEvent->finish_time;?>
	
</div>
<?php include_once "footer.php"; ?>