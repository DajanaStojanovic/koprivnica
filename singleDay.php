<?php include 'konfiguracija.php';?>
<?php
$day = $veza->prepare("select * from event where start_day = :day and category = :cat");
$day->bindParam(":day", $_GET["day"]);
$day->bindParam(":cat", $_GET["cat"]);
$day->execute();
$allDayEvents = $day->fetchAll(PDO::FETCH_OBJ);
?>
<?php include_once "header.php"; ?>

<div class="single_day_header">
	<p><?php echo $_GET["day"] . "." . $currentMonth . ".";?></p>
	<hr/>
	<small> Kategorija: <?php echo $_GET["cat"];?> </small>
</div>
<?php foreach($allDayEvents as $events):?>
<div class="single_day_content row">
	<div class="col-md-3">
		Slika eventa
	</div>

	<div class="col-md-9">
		Opis eventa
	</div>
</div>
<?php endforeach;?>




<?php include_once "footer.php"; ?>