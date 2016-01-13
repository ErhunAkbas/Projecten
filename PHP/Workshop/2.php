 <?php 

$base1 = "auto";
$base2 = "vis";
$base3 = "mosterd";

$base4 = $base1;
$base1 = $base2;
$base2 = $base3;
$base3 = $base4;




echo $base1 . "<br>"; // vis
echo $base2 . "<br>";  // mosterd
echo $base3; // auto

 ?>