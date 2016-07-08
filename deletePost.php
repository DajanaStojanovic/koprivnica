<?php
include_once 'konfiguracija.php';
if(!$_POST){
	echo "NO";
}else{
	$delete = $veza->prepare("delete from event where id=:id");
	$delete->bindParam(":id", $_POST["id"]);
	$delete->execute();
	echo "OK";
}