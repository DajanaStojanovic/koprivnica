<?php include 'konfiguracija.php';

if(!$_POST && !isset($_SESSION["userData"])){
	echo "NO";
}

$insert = $veza->prepare("insert into event(name, location, description, category, organizer, price, start_day, start_month, start_year, finish_day, finish_month, finish_year) values (:name, :location, :description, :category, :organizer, :price, :start_day, :start_month, :start_year, :finish_day, :finish_month, :finish_year)");
$insert->bindParam(":name", $_POST["name"]);
$insert->bindParam(":location", $_POST["location"]);
$insert->bindParam(":description", $_POST["description"]);
$insert->bindParam(":category", $_POST["category"]);
$insert->bindParam(":organizer", $_POST["organizer"]);
$insert->bindParam(":price", $_POST["price"]);
$insert->bindParam(":start_day", $_POST["start_day"]);
$insert->bindParam(":start_month", $_POST["start_month"]);
$insert->bindParam(":start_year", $_POST["start_year"]);
$insert->bindParam(":finish_day", $_POST["finish_day"]);
$insert->bindParam(":finish_month", $_POST["finish_month"]);
$insert->bindParam(":finish_year", $_POST["finish_year"]);

$insert->execute();
$id = $veza->lastInsertId();
echo $id;
