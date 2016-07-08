<?php include 'konfiguracija.php';?>
<?php 
//CURRENT MONTH EVENTS
$events = $veza->prepare("select * from event where start_month = :currentMonth and category = :category");
$events->bindParam(":currentMonth", $currentMonth);
$events->bindParam(":category", $_POST["cat"]);
$events->execute();
$allEvents = $events->fetchAll(PDO::FETCH_OBJ);

?>
<?php include_once "header.php"; ?>

<img src="images/images.png" alt="Slika kategorije" class="category_img" />

<div class="<?php echo $_POST["cat"];?>">
	<h1><?php echo $_POST["cat"];?></h1>
</div>

<div class="content">

	<div id="calendar">

	</div>
	
</div>


<!-- CALENDAR SCRIPTS-->
<link href="css/jquery.event.calendar.css" rel="stylesheet" />
<script src="js/jquery.event.calendar.js"></script>
<script src="js/languages/jquery.event.calendar.en.js"></script>
<script type="text/javascript">
    $(function(){
		$('#calendar').eCalendar({;
			currentMonth	: <?php echo $currentMonth;?>,
			currentYear		: <?php echo $currentYear;?>,
			startMonth		: 1,
			startYear		: <?php echo $currentYear;?>,
			endMonth		: 12,
			endYear		: <?php echo $currentYear;?>,
			firstDayOfWeek	: 1,
			onBeforeLoad	: function() {},
			onAfterLoad		: function() {},
			onClickMonth	: function() {},
			onClickDay		: function() {
				window.location.href="singleDay.php?day=" + 
			}
		});
	});
</script>
<?php include_once "footer.php"; ?>