<?php include 'konfiguracija.php';?>
<?php 
if(!isset($_GET["setMonth"])){
	if(isset($_GET["cat"])){
		$category = $_GET["cat"];
	}else{
		$category = "%";
	}
	//CURRENT MONTH EVENTS
	$events = $veza->prepare("select * from event where start_month = :currentMonth and start_year = :currentYear and category like :category");
	$events->bindParam(":currentMonth", $currentMonth);
	$events->bindParam(":currentYear", $currentYear);
	$events->bindValue(":category", $category);
	$events->execute();
	$allEvents = $events->fetchAll(PDO::FETCH_OBJ);
}else{
	//SELECTED MONTH EVENTS
	$events = $veza->prepare("select * from event where start_month = :currentMonth and start_year = :currentYear and category = :category");
	$events->bindParam(":currentMonth", $_GET["setMonth"]);
	$events->bindParam(":currentYear", $currentYear);
	$events->bindValue(":category", $_GET["cat"]);
	$events->execute();
	$allEvents = $events->fetchAll(PDO::FETCH_OBJ);
}


?>
<?php include_once "header.php"; ?>
	<img src="<?php echo $put;?>images/<?php echo $_GET["cat"];?>.jpg" alt="Slika kategorije" class="category_img" />

<div class="single_category_title <?php echo $_GET["cat"];?>">
	<h1><?php echo $_GET["cat"];?></h1>
</div>

<div class="content">
	<div class="row">
	<!-- KONTROLE ZA MIJENJANJE MJESECA - NAPRAVITI -->

		<div class="col-sm-12">
			<h2 id="month">
			<?php if(!isset($_GET["setMonth"])){
					echo $currentMonth;
			}else{
					echo $_GET["setMonth"];
			}?> 
			</h2>
		</div>
		
		
	<!-- UBACITI FILTERE -->	
	</div>
	<div class="row calendar">
	
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
				<a id="<?php echo $i;?>" class="getDayEvents" style="cursor: pointer">
					<div class="col-xs-4 col-md-2 col-lg-1" 
					style="background-color: <?php if($numberOfEvents==0){ echo "white;";}else{ echo "#0178BC; color: white";}?>
					; border: 1px solid #0178BC; text-align: center;">
						<div class="calendarDay" id="<?php echo $day;?>">
							
								<h1> <?php echo $day;?> </h1>
								<hr/>
								
								
								<small><b> Broj događaja: <?php echo $numberOfEvents;?> </b></small>
								
						</div>
					</div>
				</a>
				
				
	<?php endfor;?>
	
	</div>
	
	<!-- DOGAĐAJI -->
	<div class="row" id="events">
		
	</div>
</div>

<?php include_once "footer.php"; ?>
<script>
$(".getDayEvents").on("click", function(){
	var day = $(this).attr("id");
	if(day.length==1){
		var day = "0" + day;
	}
	var month = $.trim($("#month").html());
	var category = "<?php echo $_GET["cat"];?>";
	$.ajax({
				type: 'POST',
				url: 'filterEventsCalendar.php',
				data: "day=" + day + "&month=" + month + "&cat=" + category,
				dataType: 'text'
			}).done(function(rezultat) {
				if(rezultat!="NO"){
						$("#events").empty();
						$("#events").append(rezultat);
						$('html, body').animate({
							scrollTop: $("#events").offset().top
						}, 1000);
				}else{
					alert("Došlo je do pogreške. Pokušajte ponovo.");
				}				
			});
	return false;	
	
});
</script>
