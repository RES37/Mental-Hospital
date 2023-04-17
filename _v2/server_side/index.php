<html>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <head>
  </head>

  <body>
    <?php
      session_start();
      session_destroy();

      include 'server_login/server_login_form.php'
    ?>
  </body>
</html>