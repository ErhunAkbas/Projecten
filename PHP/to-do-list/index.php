<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "todo";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if (!empty($_POST)) {

	$sql = "INSERT INTO gegevens (items) VALUES ('{$conn->real_escape_string($_POST['itmes'])}')";
	
	if ($conn->query($sql) === TRUE) {
    	echo "New record created successfully";
	} else {
    	echo "Error: " . $sql . "<br>" . $conn->error;
	}
}

$sql = "SELECT * FROM gegevens";
$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>To do</title>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		<div class="list">
			<h1 class="header"> To do.</h1>

			<ul class="items">
			<?php
			if (mysqli_num_rows($result) > 0) {
    		// output data of each row
    			while($row = mysqli_fetch_assoc($result)) {
    				echo "<li>";
        			echo "<span class=\"item\">" . $row['items'] . "</span>";
        			echo "</li>";
   				}
			}
			?>
			</ul>

			<form class="item-add" action="test.php" method="post">
				<input type="text" name="itmes" maxlength="250" placeholder="Type een nieuw item" class="input" autocmplate="off"required><br>
				<input type="submit" value="Toevoegen" class="submit">
			</form>
		</div>
	</body>
</html>

<?php
$conn->close();
?>