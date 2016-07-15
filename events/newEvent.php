<?php include '../konfiguracija.php';

if(!$_POST && !isset($_SESSION["userData"])){
	echo "NO";
}

$insert = $veza->prepare("insert into event(name, location, description, category, organizer, price, start_day, start_month, start_year, finish_day, finish_month, finish_year, start_time, finish_time, url) values (:name, :location, :description, :category, :organizer, :price, :start_day, :start_month, :start_year, :finish_day, :finish_month, :finish_year, :start_time, :finish_time, :url)");
$insert->bindValue(":name", $_POST["name"]);
$insert->bindValue(":location", $_POST["location"]);
$insert->bindValue(":description", $_POST["description"]);
$insert->bindValue(":category", $_POST["category"]);
$insert->bindValue(":organizer", $_POST["organizer"]);
$insert->bindValue(":price", $_POST["price"]);
$insert->bindValue(":start_day", $_POST["start_day"]);
$insert->bindValue(":start_month", $_POST["start_month"]);
$insert->bindValue(":start_year", $_POST["start_year"]);
$insert->bindValue(":finish_day", $_POST["finish_day"]);
$insert->bindValue(":finish_month", $_POST["finish_month"]);
$insert->bindValue(":finish_year", $_POST["finish_year"]);
$insert->bindValue(":start_time", $_POST["startTime"]);
$insert->bindValue(":finish_time", $_POST["endTime"]);
$insert->bindValue(":url", $_POST["url"]);

$insert->execute();
$id = $veza->lastInsertId();
echo $id;
