<?php 
	$number1 = $_POST['number1'];
	$number2 = $_POST['number2'];
	$operator = $_POST['operator'];
	$error = "";

	if (is_numeric($number1)){
	}

	else{
		$error = "Getal 1 niet geldig: " . $number1 . "<br>";
	}

	if (is_numeric($number2)){
	}

	else{
		$error = $error . "Getal 2 niet geldig: " . $number2 . "<br>";
	}

if ($operator == "+" || $operator == "-" || $operator == "*" || $operator == "/") {
	# code...

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
	}
	else{
		$error = $error . "operator niet geldig: " . $operator;
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
		<?php
			if (empty($error)){
				# code...
				echo $number1 ." " . $operator . " " . $number2 . " = " . $answer . "<br><br>";
			}
			else{
				echo $error;
			}
		?>
		<a href="index.html"><button>Volgende berekening</button></a>
	</div>
</body>
</html>