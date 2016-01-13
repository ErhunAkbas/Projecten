<?php 

	$getallen = array(
		10,7

	);

	$max = 0;

	foreach ($_GET as $key => $value) {
		if ($value >
		 $max) {
			# code...
		}
		$uitkomst = $uitkomst + $value;

		
	}
	echo $uitkomst;
 ?>