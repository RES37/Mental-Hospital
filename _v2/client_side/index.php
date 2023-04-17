<html>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <head>
    <title>Client Login</title>
  </head>

  <body>
    <?php
      session_start();
      session_destroy();
      
      include 'client_login/client_login_form.php';
    ?>
  </body>
</html>