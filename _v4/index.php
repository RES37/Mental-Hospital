<html>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="features_index.css">
  <head>
    <title>demoQratic</title>
  </head>

  <body>
    <?php
      session_start();
      session_destroy();
    ?>

    <div id="container">
      <h1>Are you a user or admin?</h1>
          <label>
              <a href="client_side/index.php">
                  <input type="button" name="user_type" value="user">
                  <span>User</span>
              </a>
          </label>
          
          
          <label>
              <a href="server_side/index.php">
                  <input type="button" name="user_type" value="admin">
                  <span>Admin</span>
              </a>
          </label>
    </div>
    
    <!-- <button onClick="window.location.href='server_side/index.php';">ADMIN LOGIN</button>
    <button onClick="window.location.href='client_side/index.php';">CLIENT LOGIN</button> -->
  </body>
</html>