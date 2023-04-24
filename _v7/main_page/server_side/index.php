<html>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../assets/form_index.css">
  <link rel="stylesheet" href="../assets/icon_index.css">
  <link rel="stylesheet" href="../assets/index.css">
  <?php
    include '../assets/nav_bar_css.php';
  ?>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <head>
  </head>

  <body>
    <?php
      include '../assets/nav_bar.php';

      session_start();
      session_destroy();

      include 'server_login/server_login_form.php'
    ?>
  </body>
</html>