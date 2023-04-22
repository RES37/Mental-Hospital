<html lang="en">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../../side_bar.css">
  <script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  
  <head>
    <title>User</title>
    <script>
    </script>
  </head>

  <body>
    <?php
      session_start();

      if(isset($_SESSION['booth_id']) || isset($_SESSION['booth_strand'])) {
        include 'client_qr_scanner_form.php';
      }
      else {
        header("Location: ../index.php");
      }
    ?>
  </body>
</html>