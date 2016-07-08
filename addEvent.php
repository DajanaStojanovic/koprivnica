<?php include 'konfiguracija.php';?>
<?php include_once "header.php"; ?>

<div class="row content">
<div class="col-md-12">
	<h1>Dodaj vijest</h1>

	<form class="form-horizontal" role="form">
			  <div class="form-group">
			    <div class="col-sm-12">
			    	<input type="text" class="form-control" id="eventTitle" placeholder="Naslov događaja">
			  </div>
			  </div>

			  <div class="form-group">
			    <div class="col-sm-12">
			    	<textarea type="text" class="form-control" id="eventDescription" placeholder="Opis događaja"></textarea>
			  </div>
			  </div>

			  <div class="form-group">
			    <div class="col-sm-12">
			    	<input type="text" class="form-control" id="eventAdress" placeholder="Mjesto događaja">
			  </div>
			  </div>

			 <div class="form-group">
			    <div class="col-sm-12">
			    	  <label for="sel1">Kategorija događaja:</label>
					  <select class="form-control" id="sel1">
					    <option>1</option>
					    <option>2</option>
					  </select>
			  </div>
			  </div>

			  <p>Početak događaja: <input type="text" id="datepicker"></p>
			  <p>Kraj događaja: <input type="text" id="datepicker1"></p>

			
			  <div class="form-group"> 
			    <div class="col-sm-12">
			      <button id="login" class="btn btn-default">Dodaj događaj</button>
			    </div>
			  </div>
	</form>
</div>

</div>

<?php include_once "footer.php"; ?>