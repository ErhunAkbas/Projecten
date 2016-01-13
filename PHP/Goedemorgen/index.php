<?php
	$dagdeel = date("H");

	// 0 t/m 6 = nacht 
	// 6 t/m 12 = ochtend
	// 12t/m 18 = middag
	// 18 t/m 23 = avond

	if($dagdeel >= 6 && $dagdeel < 12){
		$message = "Goedemorgen";
		// nacht 
	} 
	elseif ($dagdeel >= 12 && $dagdeel < 18) {
		$message = "Goedemiddag";
		// ochtend
	}
	 elseif ($dagdeel >= 18 && $dagdeel < 24) {
		$message = "Goedeavond";
		// middag
	}
	 else{
		$message = "Goedenacht";
		//avond
	}

?>
<!DOCTYPE html>

<html>
	<head>
		<title><?php echo $message; ?></title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>
	<body class="<?php echo $message; ?>">
		<div class="container">
			<p><?php echo $message; ?></p>
			<p><?php echo "<br>Het is nu: ";
			echo $dagdeel . ":" . date("i"); ?></p>
		</div>		
	</body>
</html>