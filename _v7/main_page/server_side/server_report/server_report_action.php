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

$sql = "SELECT booth_strand AS Names, COUNT(*) AS Total FROM bvs_scanned_users JOIN bvs_booths ON fk_booth_id = booth_id GROUP BY booth_strand";
$result = mysqli_query($conn, $sql);

$data = array();
while($row = mysqli_fetch_array($result)) {
    $data[] = $row;
}
?>