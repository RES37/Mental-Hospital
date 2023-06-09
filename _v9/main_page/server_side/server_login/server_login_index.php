<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="../../assets/css/features_index.css">
    <link rel="stylesheet" href="../../assets/css/icon_index.css">
    <link rel="stylesheet" href="../../assets/css/top_nav.css"> 
    <?php include '../../assets/php/nav_bar_css.php'; ?>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>

  <body>
    <?php
      include '../../assets/php/nav_bar.php';

      session_start();

      if(isset($_SESSION['admin_id'])) {
        include 'server_login_index_features.php';
      }
      else {
        header("Location: server_login_form.php");
      }
    ?>
  </body>
</html>
