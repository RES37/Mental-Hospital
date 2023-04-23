<html>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../../icon_index.css">
  <script src="https://www.gstatic.com/charts/loader.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <head>
    <title>Admin</title>
  </head>

  <body>
    <?php
      session_start();

      if(isset($_SESSION['admin_id'])) {
        include 'server_report_action.php';
        include 'server_report_form.php';
      }
      else {
        header("Location: ../index.php");
      }
    ?>
  </body>
</html>