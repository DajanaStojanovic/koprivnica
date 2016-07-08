<?php
include_once 'konfiguracija.php';
if(!$_POST || !isset($_SESSION["userData"])){
	echo "NO";
}else{
	$delete = $veza->prepare("delete from event where id=:id");
	$delete->bindParam(":id", $_POST["id"]);
	$delete->execute();
	echo "OK";
}