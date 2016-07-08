<?php include 'konfiguracija.php';?>
<?php
$day = $veza->prepare("select * from event where start_day = :day and category = :cat");
$day->bindParam(":day", $_GET["day"]);
$day->bindParam(":cat", $_GET["cat"]);
$day->execute();
$allDayEvents = $day->fetchAll(PDO::FETCH_OBJ);
?>
<?php include_once "header.php"; ?>

<div class="single_day_header" style="text-align: center;">
	<p><?php echo $_GET["day"] . "." . $currentMonth . ".";?></p>
	<hr />
	 Kategorija: <?php echo $_GET["cat"];?>
</div>
<?php foreach($allDayEvents as $events):?>
<div class="single_day_content row">
	<div class="col-md-3 single_day_image">
		<?php if(isset($events->pic_extension)):?>
			<img src="<?php echo $put;?>images/<?php echo $events->pic_extension;?>" />

		<?php else:?>
			<img src="images/placeholder.png" />
		<?php endif;?>
		
	</div>
 
	<div class="col-md-7 single_day_description">
		<a href="singlePost.php?id=<?php echo $events->id;?>"><h3> <?php echo $events->name;?> </h3></a>
		<p><?php echo $events->description;?></p>
	</div>
	<div class="col-md-2 single_day_location">
		<button class="btn btn-default" data-toggle="modal" data-target="#myModalLokacija"> Lokacija </button>
	</div>
</div>
<?php endforeach;?>

<?php include_once "locationModal.php"; ?>

<?php include_once "footer.php"; ?>