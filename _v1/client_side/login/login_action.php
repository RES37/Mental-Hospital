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

// Gets the form data
$strand = $_POST['login_strand'];
$password = $_POST['login_password'];

// Checking if data input and data from database is the same
$sql = "SELECT * FROM booths WHERE strand = '$strand' AND password = '$password'";
$result = mysqli_query($conn, $sql);

// User authentication
if ($result->num_rows > 0) {
	//user exists, global variable of booth_id and include qr_scanner.php
	session_start();

	if($row = mysqli_fetch_array($result)) {
		$_SESSION["booth_id"] = $row['booth_id'];

		header("Location: ../qr_scanner/qr_index.php");
	}
}
else {
	//user does not exist, display error message
	echo "Invalid login credentials";
}

// Clossing connection to database
mysqli_close($conn);
?>