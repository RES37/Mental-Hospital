<html>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../form_index.css">
  <link rel="stylesheet" href="../icon_index.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <head>
    <title>User</title>
  </head>

  <body>
    <?php
      session_start();
      session_destroy();
      
      include 'client_login/client_login_form.php';
    ?>
  </body>
</html>