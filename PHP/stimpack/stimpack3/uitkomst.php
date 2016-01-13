<?php 
	$maxvalue = 0;
	foreach ($_GET as $value) {
		if ($value > $maxvalue) {
			$maxvalue = $value;
		}
	}
		echo $maxvalue;
 ?>
