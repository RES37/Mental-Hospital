<html>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <head>
    <title>Main Page</title>
  </head>

  <body>
    <?php
      session_start();
      session_destroy();
    ?>
    
    <button onClick="window.location.href='server_side/index.php';">ADMIN LOGIN</button>
    <button onClick="window.location.href='client_side/index.php';">CLIENT LOGIN</button>
  </body>
</html>