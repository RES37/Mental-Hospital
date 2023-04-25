<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User</title>
    <link rel="stylesheet" href="../../assets/side_bar.css">
    <link rel="stylesheet" href="../../assets/icon_index.css">
    <link rel="stylesheet" href="../../assets/index.css"> 
    <?php
      include '../../assets/nav_bar_css.php';
    ?>
    <script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
  </head>

  <body>
    <?php
      include '../../assets/nav_bar.php';

      session_start();

      if(isset($_SESSION['booth_id']) || isset($_SESSION['booth_username'])) {
        include 'client_qr_form.php';
      }
      else {
        header("Location: ../index.php");
      }
    ?>
  </body>
</html>
