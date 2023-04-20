<html>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../../side_bar.css">
  <script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <head>
    <title>User</title>
    <script>
        
    </script>
  </head>

  <body>
    <?php
      session_start();

      if(isset($_SESSION['booth_id'])) {
        include 'client_qr_scanner_form.php';
      }
      else {
        header("Location: ../index.php");
      }
    ?>
  </body>
</html>