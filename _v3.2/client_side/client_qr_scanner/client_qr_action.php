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
if(isset($_POST['client_qr_USER_ID'])) {
  $client_qr_USER_ID = $_POST['client_qr_USER_ID'];
  $client_qr_BOOTH_ID = $_SESSION['booth_id'];

  // Insert the data into the database
  $sql = "INSERT INTO bvs_scanned_users (fk_booth_id, fk_user_id) VALUES('$client_qr_BOOTH_ID', '$client_qr_USER_ID')";

  // Success, data get sent to database and page refresh
  if (mysqli_query($conn, $sql)) {
    header("Location: client_qr_index.php");
  }
  // Failure, if qr code already been used
  else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
}
  
  // Clossing connection to database
  mysqli_close($conn);
?>