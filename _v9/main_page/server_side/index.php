<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="../assets/css/form_index.css">
  <link rel="stylesheet" href="../assets/css/icon_index.css">
  <link rel="stylesheet" href="../assets/css/top_nav.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <?php include '../assets/php/nav_bar_css.php'; ?>
</head>

<body>
  <?php
    include '../assets/php/nav_bar.php';
    session_start();
    session_destroy();
    include 'server_login/server_login_form.php';
  ?>
</body>
</html>
