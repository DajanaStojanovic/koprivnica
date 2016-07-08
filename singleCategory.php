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
	<link href="css/jquery.event.calendar.css" rel="stylesheet" />
	<script src="js/jquery.event.calendar.js"></script>
	<script src="js/languages/jquery.event.calendar.en.js"></script>
	<img src="images/images.png" alt="Slika kategorije" class="category_img" />

<div class="<?php echo $_POST["cat"];?>">
	<h1><?php echo $_POST["cat"];?></h1>
</div>

<div class="content">
	<div class="row">
		<h1> Događaji za mjesec: <?php echo $currentMonth;?> </h1>
	</div>
	<div class="row">
	
	<?php 
	$dan31 = array("01", "03", "05", "07", "08", "10", "12");
	$dan30 = array("04", "06", "09", "11");
	$dan28 = array("02");
	if(in_array($currentMonth, $dan31)){
		$brDana = 32;
	}elseif(in_array($currentMonth, $dan30)){
		$brDana = 31;
	}elseif(in_array($currentMonth, $dan28)){
		$brDana = 29;
	}
	for($i=1; $i<$brDana; $i++):
				if(strlen($i)==1){ $day= "0" . $i;}else{$day = $i;};?>
				
				<!--BROJ DOGAĐAJA-->
				<?php 
							$numberOfEvents = 0;
							foreach($allEvents as $event):
								if($event->start_day==$day){
									$numberOfEvents++;
								}
							endforeach;
				?>
				<a href="<?php echo $put;?>singleDay.php?day=<?php echo $day;?>&cat=<?php echo $_GET["cat"];?>">
					<div class="col-xs-4 col-md-2 col-lg-1" 
					style="background-color: <?php if($numberOfEvents==0){ echo "white";}else{ echo "#0178BC";}?>
					; border: 1px solid blue; text-align: center;">
						<div class="calendarDay" id="<?php echo $day;?>">
							
								<h1> <?php echo $day;?> </h1>
								<hr/>
								
								
								<small><b> Broj događaja: <?php echo $numberOfEvents;?> </b></small>
								
						</div>
					</div>
				</a>
				
				
	<?php endfor;?>
	
	</div>
</div>

<?php include_once "footer.php"; ?>
