<?php include 'konfiguracija.php';?>

<?php 
$categoryFun = $veza->prepare("select * from event where category = 'zabava' and start_month = :currentMonth order by start_day desc limit 3");
$categoryFun->bindValue(":currentMonth", $currentMonth);
$categoryFun->execute();
$allFunEvents = $categoryFun->fetchAll(PDO::FETCH_OBJ);

$categorySport = $veza->prepare("select * from event where category = 'sport' and start_month = :currentMonth order by start_day desc limit 3");
$categorySport->bindValue(":currentMonth", $currentMonth);
$categorySport->execute();
$allSportEvents = $categorySport->fetchAll(PDO::FETCH_OBJ);

$categoryBusiness = $veza->prepare("select * from event where category = 'posao' and start_month = :currentMonth order by start_day desc limit 3");
$categoryBusiness->bindValue(":currentMonth", $currentMonth);
$categoryBusiness->execute();
$allBusinessEvents = $categoryBusiness->fetchAll(PDO::FETCH_OBJ);

$categoryHealth = $veza->prepare("select * from event where category = 'zdravlje' and start_month = :currentMonth order by start_day desc limit 3");
$categoryHealth->bindValue(":currentMonth", $currentMonth);
$categoryHealth->execute();
$allHealthEvents = $categoryHealth->fetchAll(PDO::FETCH_OBJ);

$categoryCulture = $veza->prepare("select * from event where category = 'kultura' and start_month = :currentMonth order by start_day desc limit 3");
$categoryCulture->bindValue(":currentMonth", $currentMonth);
$categoryCulture->execute();
$allCultureEvents = $categoryCulture->fetchAll(PDO::FETCH_OBJ);

$categoryEdu = $veza->prepare("select * from event where category = 'obrazovanje' and start_month = :currentMonth order by start_day desc limit 3");
$categoryEdu->bindValue(":currentMonth", $currentMonth);
$categoryEdu->execute();
$allEduEvents = $categoryEdu->fetchAll(PDO::FETCH_OBJ);
?>
<?php include_once "header.php"; ?>

<img src="images/video.png" class="video_start" />

<div class="content">

	<div class="row">
		<div class="category_fun"><a href="singleCategory.php?cat=Zabava">Zabava</a></div>
		<?php foreach($allFunEvents as $fun):?>
		<div class="col-md-4 category_fun_news">
		<?php if(isset($fun->pic_extension)):?>
			<img src="<?php echo $put;?>/images/<?php echo $fun->id . "." . $fun->pic_extension;?>" class="news_image" />

		<?php else:?>
			<img src="images/koprivnica.jpg" class="news_image" />
		<?php endif;?>
		
			<h1><?php echo $fun->name;?></h1>
			<p><?php echo $fun->description;?></p>
			<a href="singlePost.php?id=<?php echo $fun->id;?>">Pročitaj više...</a>
		</div>
		<?php endforeach;?>
	</div>


	<div class="row">
		<div class="category_sport"><a href="singleCategory.php?cat=Sport">Sport</a></div>
		<?php foreach($allSportEvents as $sport):?>
		<div class="col-md-4 category_sport_news">

		<?php if(isset($fun->pic_extension)):?>
			<img src="<?php echo $put;?>/images/<?php echo $fun->id . "." . $fun->pic_extension;?>" class="news_image" />

		<?php else:?>
			<img src="images/placeholder.png" class="news_image" />
		<?php endif;?>
			<h1><?php echo $sport->name;?></h1>
			<p><?php echo $sport->description;?></p>
			<a href="singlePost.php?id=<?php echo $sport->id;?>">Pročitaj više...</a>
		</div>
		<?php endforeach;?>
	</div>

	<div class="row">
		<div class="category_health"><a href="singleCategory.php?cat=Zdravlje">Zdravlje</a></div>
		<?php foreach($allHealthEvents as $health):?>
		<div class="col-md-4 category_health_news">
		<?php if(isset($fun->pic_extension)):?>
			<img src="<?php echo $put;?>/images/<?php echo $fun->id . "." . $fun->pic_extension;?>" class="news_image" />

		<?php else:?>
			<img src="images/placeholder.png" class="news_image" />
		<?php endif;?>
			<h1><?php echo $health->name;?></h1>
			<p><?php echo $health->description;?></p>
			<a href="singlePost.php?id=<?php echo $health->id;?>">Pročitaj više...</a>
		</div>
		<?php endforeach;?>
	</div>

	<div class="row">
		<div class="category_work"><a href="singleCategory.php?cat=Posao">Posao</a></div>
		<?php foreach($allBusinessEvents as $work):?>
		<div class="col-md-4 category_work_news">
		<?php if(isset($fun->pic_extension)):?>
			<img src="<?php echo $put;?>/images/<?php echo $fun->id . "." . $fun->pic_extension;?>" class="news_image" />

		<?php else:?>
			<img src="images/placeholder.png" class="news_image" />
		<?php endif;?>
			<h1><?php echo $work->name;?></h1>
			<p><?php echo $work->description;?></p>
			<a href="singlePost.php?id=<?php echo $work->id;?>">Pročitaj više...</a>
		</div>
		<?php endforeach;?>
	</div>


	<div class="row">
		<div class="category_culture"><a href="singleCategory.php?cat=Kultura">Kultura</a></div>
		<?php foreach($allCultureEvents as $cult):?>
		<div class="col-md-4 category_culture_news">
		<?php if(isset($fun->pic_extension)):?>
			<img src="<?php echo $put;?>/images/<?php echo $fun->id . "." . $fun->pic_extension;?>" class="news_image" />

		<?php else:?>
			<img src="images/placeholder.png" class="news_image" />
		<?php endif;?>
			<h1><?php echo $cult->name;?></h1>
			<p><?php echo $cult->description;?></p>
			<a href="singlePost.php?id=<?php echo $cult->id;?>">Pročitaj više...</a>
		</div>
		<?php endforeach;?>
	</div>


	<div class="row">
		<div class="category_school"><a href="singleCategory.php?cat=Obrazovanje">Obrazovanje</a></div>
		<?php foreach($allEduEvents as $edu):?>
		<div class="col-md-4 category_school_news">
		<?php if(isset($fun->pic_extension)):?>
			<img src="<?php echo $put;?>/images/<?php echo $fun->id . "." . $fun->pic_extension;?>" class="news_image" />

		<?php else:?>
			<img src="images/placeholder.png" class="news_image" />
		<?php endif;?>
			<h1><?php echo $edu->name;?></h1>
			<p><?php echo $edu->description;?></p>
			<a href="singlePost.php?id=<?php echo $edu->id;?>">Pročitaj više...</a>
		</div>
		<?php endforeach;?>
	</div>

</div>
<?php include_once "footer.php"; ?>