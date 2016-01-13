<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<?php
		 $name = $_GET ['naam'];
		 $day = $_GET ['dag'];
		 $color = $_GET ['kleur'];
	?>

	<table border "5">
			<tr>
				<td>Name</td>	
				<td><?php echo $name; ?></td>
			</tr>
			<tr>
				<td>Day</td>	
				<td><?php echo $day; ?></td>
			</tr>
			<tr>
				<td>Color</td>	
				<td><?php echo $color; ?></td>
			</tr>
			
		</table>
</body>	
</html>