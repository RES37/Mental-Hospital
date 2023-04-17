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
$server_register_STRAND = $_POST['server_register_STRAND'];
$server_register_PASSWORD = $_POST['server_register_PASSWORD'];

// Insert the data into the database
$sql = "INSERT INTO bvs_booths (booth_strand, booth_password) VALUES('$server_register_STRAND', '$server_register_PASSWORD')";

if (mysqli_query($conn, $sql)) {
	echo "Registration successful";
}
else {
	echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>