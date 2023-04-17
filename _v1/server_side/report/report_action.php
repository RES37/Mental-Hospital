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
$report_booth_id = $_POST['report_booth_id'];

// Checking if data input and data from database is the same
$sql = "SELECT booth_id FROM scanned_users WHERE booth_id = '$report_booth_id'";
$result = mysqli_query($conn, $sql);

// User authentication
if ($result->num_rows > 0) {
	//user exists, global variable of server_booth_id and include qr_scanner.php

    session_start();

    $report_booth_id = $_SESSION['booth_id'];

    $query = "SELECT count(*) FROM scanned_users WHERE booth_id ='$report_booth_id'";
    $res = $conn->query($query);
    
    // Display data on web page
    while($row = mysqli_fetch_array($res)) {
        echo "Total Rows is ". $row['count(*)'];
    }
}
else {
	//user does not exist, display error message
	echo "Invalid login credentials";
}

// Clossing connection to database
mysqli_close($conn);
?>