<html>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../../side_bar.css">
  <script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
  <head>
    <title>User</title>
    <script>

    </script>
  </head>

  <body>
    <?php
      session_start();

      if(isset($_SESSION['booth_id'])) {
        include 'client_qr_scanner.php';
      }
      else {
        header("Location: ../index.php");
      }
    ?>
  </body>
</html>