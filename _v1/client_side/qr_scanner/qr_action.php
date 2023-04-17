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

// QR scanner to database
session_start();

// Checking if 'text' has any value
if(isset($_POST['qr_user_id'])) {
  $qr_user_id = $_POST['qr_user_id'];
  $booth_id = $_SESSION['booth_id'];

  // Insert the data into the database
  $sql = "INSERT INTO scanned_users (booth_id, user_id) VALUES('$booth_id', '$qr_user_id')";
  
  // Success, data get sent to database and page refresh
  if (mysqli_query($conn, $sql)) {
    header("Location: qr_index.php");
  }
  // Failure, if qr code already been used
  else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
}
  
  // Clossing connection to database
  mysqli_close($conn);
?>