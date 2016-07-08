<?php include 'konfiguracija.php';?>
<?php
$day = $veza->prepare("select * from event where start_day = :day and category = :cat");
$day->bindParam(":day", $_GET["day"]);
$day->bindParam(":cat", $_GET["cat"]);
$day->execute();
$allDayEvents = $day->fetchAll(PDO::FETCH_OBJ);
?>
<?php include_once "header.php"; ?>

<div class="single_day_header" style="text-align: center;">
	<p><?php echo $_GET["day"] . "." . $currentMonth . ".";?></p>
	<hr />
	 Kategorija: <?php echo $_GET["cat"];?>
</div>
<?php foreach($allDayEvents as $events):?>
<div class="single_day_content row">
	<div class="col-md-3 single_day_image">
		<?php if(isset($events->pic_extension)):?>
			<img src="<?php echo $put;?>images/<?php echo $events->pic_extension;?>" />

		<?php else:?>
			<img src="images/placeholder.jpg" />
		<?php endif;?>
		
	</div>
 
	<div class="col-md-7 single_day_description">
		<a href="singlePost.php?id=<?php echo $events->id;?>"><h3> <?php echo $events->name;?> </h3></a>
		<p><?php echo $events->description;?></p>
	</div>
	<div class="col-md-2 single_day_location">
		<a target="_blank" href="singlePost.php?id=<?php echo $events->id;?>#mapwrap"><button class="btn btn-default"> Lokacija </button></a>
		<?php if(isset($_SESSION["userData"])):
			if($_SESSION["userData"]->type==1 || $_SESSION["userData"]->id==$events->id):
		?>
		<button class="btn btn-default delete" id="<?php echo $events->id;?>"> Obriši </button>
		<a href="editEvent.php?id=<?php echo $events->id;?>"><button class="btn btn-default edit">Uredi</button></a>
		<?php endif; 
		endif;?>
	</div>
</div>
<?php endforeach;?>


<?php include_once "footer.php"; ?>

<script>
$(".delete").click(function(){
	var id = $(this).attr("id");
	var element = $(this);
	$.ajax({
				type: 'POST',
				url: 'deletePost.php',
				data: "id=" + id,
				dataType: 'text'
			}).done(function(rezultat) {
				if(rezultat=="OK"){
					element.parent().parent().remove();
				}else{
					alert("Došlo je do pogreške, pokušajte ponovo");
				}			
			});
});

</script>