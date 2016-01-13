<?php
	
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "todo";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";


	
$sql = "INSERT INTO gegevens (items)
VALUES ('{$conn->real_escape_string($_POST['itmes'])}')";


if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();