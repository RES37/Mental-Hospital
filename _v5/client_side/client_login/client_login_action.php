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
$client_login_STRAND = $_POST['client_login_STRAND'];
$client_login_PASSWORD = $_POST['client_login_PASSWORD'];

// Checking if data input and data from database is the same
$sql = "SELECT * FROM bvs_booths WHERE booth_strand = '$client_login_STRAND' AND booth_password = '$client_login_PASSWORD'";
$result = mysqli_query($conn, $sql);

// User authentication
if ($result->num_rows > 0) {
	//user exists, global variable of booth_id
	session_start();

	if($row = mysqli_fetch_array($result)) {
		$_SESSION["booth_id"] = $row['booth_id'];
		$_SESSION["booth_strand"] = $row['booth_strand'];

		header("Location: ../client_qr_scanner/client_qr_index.php");
	}
}
else {
	//user does not exist, display error message
	echo '<script language="javascript">
	alert("Invalid login credentials")
	window.location.href="../index.php";
	</script>';
}

// Clossing connection to database
mysqli_close($conn);
?>