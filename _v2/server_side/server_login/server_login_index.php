<html>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <head>
    <title>SERVER ADMIN</title>
  </head>

  <body>
    <?php
      session_start();

      if(isset($_SESSION['admin_id'])) {
        include 'server_login_features.php';
      }
      else {
        header("Location: server_login_form.php");
      }
    ?>
  </body>
</html>