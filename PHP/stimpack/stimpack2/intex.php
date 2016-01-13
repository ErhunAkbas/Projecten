<?php 
 
	$max="niks";

 	foreach ($_GET as $kaartje) {
 		if ($max == "niks"){
 			$max = $kaartje;
 		} elseif ($kaartje > $max) {
 			$max = $kaartje;
 		}
 	}
 	echo $max;
 ?>