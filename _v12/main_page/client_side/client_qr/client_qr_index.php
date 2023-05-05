
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
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/webrtc-adapter/3.3.3/adapter.min.js"></script>
  <script type="text/javascript" src="instascan.min.js"></script>
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
  <script type="text/javascript" src="client_qr_form.js"></script>
</body>
</html>
