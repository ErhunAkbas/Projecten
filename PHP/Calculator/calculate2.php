<?php 

	$number1 = $_POST['number1'];
	$number2 = $_POST['number2'];
	$operator = $_POST['operator'];


	if($operator == "+"){
		$answer = $number1 + $number2;
	}


	if($operator == "-"){
		$answer = $number1 - $number2;	
	}

	if($operator == "*"){
		$answer = $number1 * $number2;
	}

	if($operator == "/"){
		$answer = $number1 / $number2;
	}

 ?>




<!doctype html>
<html>
<head>
	<title>calculator</title>
	<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	<div class="frame">
		<h1>Calculator</h1>
		<?php echo $number1 ." " . $operator . " " . $number2 . " = " . $answer . "<br><br>";?>
		<a href="index.html"><button>Volgende berekening</button></a>
	</div>
</body>
</html>