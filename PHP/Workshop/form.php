<?php 
$name = "";
$food = "";
if (!empty($_GET)){
	$name = ['name']
	$food = ['food']
}

 ?>



<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Voorbeeld</title>
</head>
	<body>
		<form action="form.php" method="post">
			<input type="number" name="name">
			<input type="passwpr" name="food">
			<input type="submit" name="postback" value="verzenden">
		</form>
		<a href="">Klik hier</a>
	</body>
</html>