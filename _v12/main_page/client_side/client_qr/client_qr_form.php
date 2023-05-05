<?php
if(!isset($_SESSION['booth_id']) || !isset($_SESSION['booth_username'])) {
    header("Location: ../index.php");
}
?>

<div id="mySidepanel" class="sidepanel">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

    <!-- Logout button -->
    <button onClick="window.location.href='../index.php';">Logout</button>

    <!-- Display logged in username -->
    <div class="who_am_i">Hello, <?php echo $_SESSION['booth_username']; ?></div>

    <!-- Start/stop camera buttons -->
    <button id="start_camera" onClick="qrScanner()">Start Camera</button>
    <button><span id="show_camera" style="display: none;">Show Camera</span></button>
    <button><span id="hide_camera" style="display: none;">Hide Camera</span></button>

    <!-- Dropdown list of available cameras -->
    <select id="camera_select" style="display: none;"></select>

    <!-- Form for submitting scanned QR code -->
    <form action="client_qr_action.php" method="post">
        <input type="text" name="client_qr_USER_ID" id="client_qr_USER_ID" style="display: none;">
    </form>
</div>

<!-- Case of the qr scanner -->
<div id="main">
    <video id="client_qr_CAMERA"></video>
</div>