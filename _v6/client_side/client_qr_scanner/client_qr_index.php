<html>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../../features_index.css">
  <link rel="stylesheet" href="../../icon_index.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <head>
    <title>User</title>
  </head>

  <body>
    <?php
      session_start();

      if(isset($_SESSION['booth_id']) || isset($_SESSION['booth_strand'])) {
        include 'client_qr_index_features.php';
      }
      else {
        header("Location: ../index.php");
      }
    ?>
  </body>
</html>