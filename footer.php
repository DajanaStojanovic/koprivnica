<div class="footer">

	<div class="prava">
	Sva prava pridržana | Izrada: IT@FFOS team
	</div>
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/scrollreveal.js/3.1.4/scrollreveal.min.js"></script>



<script>

window.sr = ScrollReveal();
sr.reveal('dodasklasu', {reset: false, viewOffset: { top: 64 } });

</script>


<script>
	$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').focus()
	})
</script>

<?php include_once "loginForm.php"; ?>

</body>