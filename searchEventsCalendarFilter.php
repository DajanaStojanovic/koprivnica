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
	echo json_encode($allDayEvents);
}

