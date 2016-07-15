<div class="footer">
<div class="partners col-md-6 col-sm-6 col-xs-6">
		<a href="http://koprivnica.hr/" target="_blank"><img src="<?php echo $put;?>images/grb.png" /></a>
		<a href="http://www.komunalac-kc.hr/" target="_blank"><img src="<?php echo $put;?>images/komunalac.png" /></a>
		<a href="https://www.instagram.com/explore/locations/237078289/" target="_blank"><img src="<?php echo $put;?>images/insta.png" /></a>
		<a href="https://www.facebook.com/grad.koprivnica.1/?fref=ts" target="_blank"><img src="<?php echo $put;?>images/face.png" /></a>
</div>
<div class="partners col-md-6 col-sm-6 col-xs-6">
 <p>Adresa:<strong>Zrinski trg 1, 48000 Koprivnica</strong></p>
	<p>tel:<strong>+385 48 279 555</strong></p>
	<p>fax:<strong>+385 48 279 543</strong></p>
	<p>e-mail:<strong>grad.koprivnica@koprivnica.hr</strong></p>
	<p>web:<strong>www.koprivnica.hr</strong></p>
</div>

	<div class="prava col-md-12">
	Sva prava pridržana | Izrada: IT@FFOS team
	</div>
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/scrollreveal.js/3.1.4/scrollreveal.min.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>


<script>

window.sr = ScrollReveal();
sr.reveal('dodasklasu', {reset: false, viewOffset: { top: 64 } });

</script>


<script>
	$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').focus()
	})
</script>
<?php include_once  "registerForm.php"; ?>
<?php include_once "loginForm.php"; ?>

</body>