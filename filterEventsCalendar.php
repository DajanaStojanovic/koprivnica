<?php include 'konfiguracija.php';?>
<?php
$day = $veza->prepare("select * from event where start_day = :day and start_month = :month and category = :cat");
$day->bindParam(":day", $_POST["day"]);
$day->bindParam(":month", $_POST["month"]);
$day->bindValue(":cat", $_POST["cat"]);
$day->execute();
$allDayEvents = $day->fetchAll(PDO::FETCH_OBJ);

if($allDayEvents==NULL){
	echo "NO";
}else{
	foreach($allDayEvents as $events){
	
	echo '<div class="single_day_content row">
	<div class="col-md-3 single_day_image">';
	if(isset($events->pic_extension)){
		echo '<img src="' . $put . 'images/' . $events->pic_extension . '" />';
	}else{
		echo '<img src="' . $put . 'images/placeholder.jpg" />';
	}
	echo '</div> 
	<div class="col-md-7 single_day_description">
		<a href="' . $put . '/events/singleEvent.php?id=' . $events->id . '"><h3>' . $events->name . '</h3></a>
		<p>' . $events->description . '</p>
	</div>
	<div class="col-md-2 single_day_location">
		<a target="_blank" href="' . $put . 'events/singleEvent.php?id=' .  $events->id . '#mapwrap"><button class="btn btn-default"> Lokacija </button></a>';
		
	echo '</div></div>';
	}
}

