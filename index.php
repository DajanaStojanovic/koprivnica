<?php include 'konfiguracija.php';?>

<?php 
$categoryFun = $veza->prepare("select *, left(description, 300) as description from event where category = 'zabava' and start_month = :currentMonth and start_year=:currentYear order by start_day desc limit 3");
$categoryFun->bindValue(":currentMonth", $currentMonth);
$categoryFun->bindValue(":currentYear", $currentYear);
$categoryFun->execute();
$allFunEvents = $categoryFun->fetchAll(PDO::FETCH_OBJ);

$categorySport = $veza->prepare("select *, left(description, 300) as description from event where category = 'sport' and start_month = :currentMonth and start_year=:currentYear order by start_day desc limit 3");
$categorySport->bindValue(":currentMonth", $currentMonth);
$categorySport->bindValue(":currentYear", $currentYear);
$categorySport->execute();
$allSportEvents = $categorySport->fetchAll(PDO::FETCH_OBJ);

$categoryBusiness = $veza->prepare("select *, left(description, 300) as description from event where category = 'posao' and start_month = :currentMonth and start_year=:currentYear order by start_day desc limit 3");
$categoryBusiness->bindValue(":currentMonth", $currentMonth);
$categoryBusiness->bindValue(":currentYear", $currentYear);
$categoryBusiness->execute();
$allBusinessEvents = $categoryBusiness->fetchAll(PDO::FETCH_OBJ);

$categoryHealth = $veza->prepare("select *, left(description, 300) as description from event where category = 'zdravlje' and start_month = :currentMonth and start_year=:currentYear order by start_day desc limit 3");
$categoryHealth->bindValue(":currentMonth", $currentMonth);
$categoryHealth->bindValue(":currentYear", $currentYear);
$categoryHealth->execute();
$allHealthEvents = $categoryHealth->fetchAll(PDO::FETCH_OBJ);

$categoryCulture = $veza->prepare("select *, left(description, 300) as description from event where category = 'kultura' and start_month = :currentMonth and start_year=:currentYear order by start_day desc limit 3");
$categoryCulture->bindValue(":currentMonth", $currentMonth);
$categoryCulture->bindValue(":currentYear", $currentYear);
$categoryCulture->execute();
$allCultureEvents = $categoryCulture->fetchAll(PDO::FETCH_OBJ);

$categoryEdu = $veza->prepare("select *, left(description, 300) as description from event where category = 'obrazovanje' and start_month = :currentMonth and start_year=:currentYear order by start_day desc limit 3");
$categoryEdu->bindValue(":currentMonth", $currentMonth);
$categoryEdu->bindValue(":currentYear", $currentYear);
$categoryEdu->execute();
$allEduEvents = $categoryEdu->fetchAll(PDO::FETCH_OBJ);
?>
<?php include_once "header.php"; ?>

<video autoplay muted loop style="width: 100%">
	<source src="images/video.mp4" type="video/mp4">
</video>

<div class="content_index">

	<div class="row">
		<div class="category_fun"><a href="singleCategory.php?cat=Zabava"><strong>Zabava</strong></a><hr class="style-one"></div>
		<?php foreach($allFunEvents as $fun):?>
		<div class="col-md-4 category_fun_news">
		<?php if(isset($fun->pic_extension)):?>
			<img src="<?php echo $put;?>/images/<?php echo $fun->pic_extension;?>" class="news_image" />
		<?php else: ?>
			<img src="images/placeholder.jpg" class="news_image" />
		<?php endif;?>
		
			<a href="singlePost.php?id=<?php echo $fun->id;?>"><h1><?php echo $fun->name;?></h1></a>
			<p><?php echo $fun->description;?>...</p>
			<a href="singlePost.php?id=<?php echo $fun->id;?>" class="more">Pročitaj više...</a>
		</div>
		<?php endforeach;?>
	</div>


	<div class="row">
		<div class="category_sport"><a href="singleCategory.php?cat=Sport"><strong>Sport</strong></a><hr class="style-one"></div>
		<?php foreach($allSportEvents as $sport):?>
		<div class="col-md-4 category_sport_news">

		<?php if(isset($sport->pic_extension)):?>
			<img src="<?php echo $put;?>/images/<?php echo $sport->pic_extension;?>" class="news_image" />
		<?php else: ?>
			<img src="images/placeholder.jpg" class="news_image" />
		<?php endif;?>
			<a href="singlePost.php?id=<?php echo $sport->id;?>"><h1><?php echo $sport->name;?></h1></a>
			<p><?php echo $sport->description;?>...</p>
			<a href="singlePost.php?id=<?php echo $sport->id;?>" class="more">Pročitaj više...</a>
		</div>
		<?php endforeach;?>
	</div>

	<div class="row">
		<div class="category_health"><a href="singleCategory.php?cat=Zdravlje"><strong>Zdravlje</strong></a><hr class="style-one"></div>
		<?php foreach($allHealthEvents as $health):?>
		<div class="col-md-4 category_health_news">
		<?php if(isset($health->pic_extension)):?>
			<img src="<?php echo $put;?>/images/<?php echo $health->pic_extension;?>" class="news_image" />
		<?php else: ?>
			<img src="images/placeholder.jpg" class="news_image" />		
		<?php endif;?>
			<a href="singlePost.php?id=<?php echo $health->id;?>"><h1><?php echo $health->name;?></h1></a>
			<p><?php echo $health->description;?>...</p>
			<a href="singlePost.php?id=<?php echo $health->id;?>" class="more">Pročitaj više...</a>
		</div>
		<?php endforeach;?>
	</div>

	<div class="row">
		<div class="category_work"><a href="singleCategory.php?cat=Posao"><strong>Posao</strong></a><hr class="style-one"></div>
		<?php foreach($allBusinessEvents as $work):?>
		<div class="col-md-4 category_work_news">
		<?php if(isset($work->pic_extension)):?>
			<img src="<?php echo $put;?>/images/<?php echo $work->pic_extension;?>" class="news_image" />
		<?php else: ?>
			<img src="images/placeholder.jpg" class="news_image" />		
		<?php endif;?>
			<a href="singlePost.php?id=<?php echo $work->id;?>"><h1><?php echo $work->name;?></h1></a>
			<p><?php echo $work->description;?>...</p>
			<a href="singlePost.php?id=<?php echo $work->id;?>" class="more">Pročitaj više...</a>
		</div>
		<?php endforeach;?>
	</div>


	<div class="row">
		<div class="category_culture"><a href="singleCategory.php?cat=Kultura"><strong>Kultura</strong></a><hr class="style-one"></div>
		<?php foreach($allCultureEvents as $cult):?>
		<div class="col-md-4 category_culture_news">
		<?php if(isset($cult->pic_extension)):?>
			<img src="<?php echo $put;?>/images/<?php echo $cult->pic_extension;?>" class="news_image" />
		<?php else: ?>
			<img src="images/placeholder.jpg" class="news_image" />		
		<?php endif;?>
			<a href="singlePost.php?id=<?php echo $cult->id;?>"><h1><?php echo $cult->name;?></h1></a>
			<p><?php echo $cult->description;?>...</p>
			<a href="singlePost.php?id=<?php echo $cult->id;?>" class="more">Pročitaj više...</a>
		</div>
		<?php endforeach;?>
	</div>


	<div class="row">
		<div class="category_school"><a href="singleCategory.php?cat=Obrazovanje"><strong>Obrazovanje</strong></a><hr class="style-one"></div>
		<?php foreach($allEduEvents as $edu):?>
		<div class="col-md-4 category_school_news">
		<?php if(isset($edu->pic_extension)):?>
			<img src="<?php echo $put;?>/images/<?php echo $edu->pic_extension;?>" class="news_image" />
		<?php else: ?>
			<img src="images/placeholder.jpg" class="news_image" />		
		<?php endif;?>
			<a href="singlePost.php?id=<?php echo $edu->id;?>"><h1><?php echo $edu->name;?></h1></a>
			<p><?php echo $edu->description;?>...</p>
			<a href="singlePost.php?id=<?php echo $edu->id;?>" class="more">Pročitaj više...</a>
		</div>
		<?php endforeach;?>
	</div>

</div>
<?php include_once "footer.php"; ?>