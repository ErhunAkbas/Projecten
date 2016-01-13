<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Volgende</title>
</head>
	<body>
		<form action="uitkomst.php" method="get" >
			<?php  $test = $_GET ['name'] ?>

			<?php for ($x = 1; $x <= $test; $x++) { ?>
	  			 <input type="number" name="number<?php echo $x = $x + 0?>"><br>
			<?php } ?>
			<input type="submit" value="Verzenden">
		</form>
		
	</body>
</html>