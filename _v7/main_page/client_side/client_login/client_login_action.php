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
$client_login_USERNAME = $_POST['client_login_USERNAME'];
$client_login_PASSWORD = $_POST['client_login_PASSWORD'];

// Checking if data input and data from database is the same
$sql = "SELECT * FROM bvs_booths WHERE booth_strand = '$client_login_STRAND' AND booth_username = '$client_login_USERNAME'";

// Prepare statement
$result = mysqli_query($conn, $sql);

// User Authentication
if($result->num_rows > 0) {
// Fetch result
$row = mysqli_fetch_array($result);
$hashed_password = password_hash($client_login_PASSWORD, PASSWORD_DEFAULT);
	// If the password is 'null' then user input is the new password
	if (is_null($row['booth_password'])) {
		mysqli_query($conn, "INSERT INTO bvs_booths(booth_password) VALUES('$hashed_password')");
	}
	//If the password inputs matched the hashed password in the database
	else if (password_verify($client_login_PASSWORD, $hashed_password) {
		//user exists, set session variables for booth id and strand
		session_start();
		$_SESSION["booth_id"] = $row['booth_id'];
		$_SESSION["booth_strand"] = $row['booth_strand'];

		header("Location: ../client_qr_scanner/client_qr_index.php");
		exit();
	}
    }
}

//user does not exist or password is incorrect, display error message
echo '<script language="javascript">
      alert("Invalid login credentials")
      window.location.href="../index.php";
      </script>';

// Clossing connection to database
mysqli_close($conn);
?>
