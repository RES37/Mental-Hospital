<?php 
// Connect to database
$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "dbscanner";

$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

// If database connection failed
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

//  Get the form data
$strand = $_POST['register_strand'];
$password = $_POST['register_password'];

// Insert the data into the database
$sql = "INSERT INTO booths (strand, password) VALUES('$strand', '$password')";

if (mysqli_query($conn, $sql)) {
	echo "Registration successful";
}
else {
	echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>