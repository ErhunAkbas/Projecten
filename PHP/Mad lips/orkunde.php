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
				<h3>Orkunde</h3>
				<p class="verhaal">Er zijn veel mensen die niet kunnen <?php echo $_POST["vaardigheden"]?>. Neem nou <?php echo $_POST["persoon"] ?>.
				Zelfs met de hulp van een <?php echo $_POST["meenemen"] ?> of zelfs <?php echo $_POST["favogetal"] ?> kan <?php echo $_POST{"persoon"} ?> niet <?php echo $_POST["vaardigheden"] ?>.
				Dat heeft niet te maken met een gebrek aan <?php echo $_POST["beste-eigenschap"] ?>, maar met een te veel aan <?php echo $_POST["slechtste-eigenschap"] ?>.
				Te veel <?php echo $_POST["slechtste-eigenschap"] ?> leidt tot <?php echo $_POST["overkomen"] ?> en dat is niet goed als je wilt <?php echo $_POST["vaardigheden"] ?>.
				Helaas voor <?php echo $_POST["persoon"] ?>.</p>
			</div>
			<p class="footer">Deze website is gemaakt door Erhun</p>
		</div>
	</body>
</html>
