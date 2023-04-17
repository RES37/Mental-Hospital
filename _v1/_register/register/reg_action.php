<?php
// Connect to the database
$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "dbscanner";

$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

// If Database Connection Failed
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

// Gets the form data
$username = $_POST['reg_username'];
$password = $_POST['reg_password'];

// Insert the data into the database
$sql = "INSERT INTO users (username, password) VALUES ('$username', '$password')";

if (mysqli_query($conn, $sql)) {
	echo "Registration successful";
}
else {
	echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>