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
$server_login_NAME = $_POST['server_login_NAME'];
$server_login_PASSWORD = $_POST['server_login_PASSWORD'];

// Checking if data input and data from database is the same
$sql = "SELECT * FROM bvs_admin WHERE admin_name = '$server_login_NAME' AND admin_password = '$server_login_PASSWORD'";
$result = mysqli_query($conn, $sql);

// User authentication
if ($result->num_rows > 0) {
	//user exists, global variable of booth_id and include qr_scanner.php
    session_start();

    if($row = mysqli_fetch_array($result)) {
		$_SESSION["admin_id"] = $row['admin_id'];

		header("Location: server_login_index.php");
	}
}
else {
	//user does not exist, display error message
	echo "Invalid login credentials";
}

// Clossing connection to database
mysqli_close($conn);
?>