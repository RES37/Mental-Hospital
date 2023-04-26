<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User</title>
  
  <!-- Stylesheets -->
  <link rel="stylesheet" href="../../assets/css/side_bar.css"> 
  <link rel="stylesheet" href="../../assets/css/top_nav.css"> 
  <?php include '../../assets/php/nav_bar_css.php'; ?>
  
  <!-- JavaScript -->
  <script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
</head>

<body>
  <?php
    // Navigation bar
    include '../../assets/php/nav_bar_qr.php';

    // Check if the user is logged in
    session_start();
    if(isset($_SESSION['booth_id']) || isset($_SESSION['booth_username'])) {
      include 'client_qr_form.php';
    } else {
      header("Location: ../index.php");
    }
  ?>
</body>
</html>
