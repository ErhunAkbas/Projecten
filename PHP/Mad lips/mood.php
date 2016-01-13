<!DOCTYPE html>
<html>
	<head>
		<title>Mad libs</title>
		<link href="form.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div class="container">
			<h1 class="title"><a href="index.html">Mad libs</a></h1>
			<ul>
				<li><a href="index.html">Er heerst paniek...</a></li>
				<li><a href="orkunde.html">Onkunde</a></li>
				<li class="danielleedition"><a href="danielle.html">Danielle Edition</a></li>
			</ul>
			<div class="content">
				<h3>Er heerst paniek...</h3>
				<p class="verhaal">Er heerst paniek in het koninkrijk <?php echo $_POST['land'] ?>.
				Koning <?php echo $_POST['persoon'] ?>. is ten einde raad en als koning <?php echo $_POST['persoon'] ?> 
				ten einde raad is, dan roept hij zijn ten-einde-raadsheerv <?php echo $_POST['docent'] ?>.</p>
				<p class="verhaal">"<?php echo $_POST['docent'] ?>! Het is een ramp! Het is een schande!"</p>
				<p class="verhaal">"Sire, Majesteit, Uwe Luidruchtigheid, wat is er aan de hand?"</p>
				<p class="verhaal">"Mijn <?php echo $_POST['huisdier'] ?> is verdwenen! Zo maar, zonder waarschuwing.
				En ik had net <?php echo $_POST['speelgoed'] ?> voor hem gekocht!"</p>
				<p class="verhaal">"Majesteit, uw <?php echo $_POST['huisdier'] ?> komt vast vanzelf weer terug?"</p>
				<p class="verhaal">"Ja, da's leuk en aardig, maar hoe moet ik in de tussentijd \
				<?php echo $_POST['verveling'] ?> leren?"</p>
				<p class="verhaal">"Maar Sire, daar kunt u toch uw <?php echo $_POST['geld'] ?> voor gebruiken."</p>
				<p class="verhaal">"<?php echo $_POST['bezigheid'] ?>, Sire.</p>
			</div>
			<p class="footer">Deze website is gemaakt door Erhun</p>
		</div>
	</body>
</html>



	