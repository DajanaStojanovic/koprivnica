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
	<hr width="30%"/>
	 Kategorija: <?php echo $_GET["cat"];?>
</div>
<?php foreach($allDayEvents as $events):?>
<div class="single_day_content row">
	<div class="col-md-3">
		<h3> <?php echo $events->name;?> </h3>
	</div>

	<div class="col-md-6">
		<?php echo $events->description;?>
	</div>
	<div class="col-md-3">
		<button> Lokacija </button>
	</div>
</div>
<?php endforeach;?>




<?php include_once "footer.php"; ?>