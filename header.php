<?php
session_start();?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <link href='<?php echo $put;?>css/bootstrap.min.css' rel='stylesheet' type='text/css'>
    <link href='<?php echo $put;?>css/style.css' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,500' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="<?php echo $put;?>js/bootstrap.min.js" type="text/javascript"></script>
    <link rel="shortcut icon" href="<?php echo $put;?>images/favicon.ico">

</head>
<body>
<?php if(!isset($_SESSION["userData"])):?>
<div class="login_button">
  <button data-toggle="modal" data-target="#myModal">Prijava</button>
</div>

<div class="register_button">
  <button data-toggle="modal" data-target="#myModal1">Registracija</button>
</div>


<?php else:?>
<div class="login_button">
  <a href="<?php echo $put;?>logout.php"><button>Odjava</button></a>
  <a href="<?php echo $put;?>events/newEventForm.php"><button>Dodaj događaj</button></a>
</div>
<?php endif;?>


<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="<?php echo $put;?>index.php">Naslovna</a></li>
        <li><a href="<?php echo $put;?>searchEventsCalendar.php?cat=Zabava">Zabava</a></li>
      	<li><a href="<?php echo $put;?>searchEventsCalendar.php?cat=Sport">Sport</a></li>
        <li><a href="<?php echo $put;?>searchEventsCalendar.php?cat=Zdravlje">Zdravlje</a></li>
        <li><a href="<?php echo $put;?>searchEventsCalendar.php?cat=Posao">Posao</a></li>
        <li><a href="<?php echo $put;?>searchEventsCalendar.php?cat=Kultura">Kultura</a></li>
        <li><a href="<?php echo $put;?>searchEventsCalendar.php?cat=Obrazovanje">Obrazovanje</a></li>
      </ul>


    </div>
  </div>
</nav>

