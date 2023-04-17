<?php
if(!isset($_SESSION['booth_id'])) {
    header("Location: qr_index.php");
}
?>

<!-- Case of the qr scanner -->
<video id="qr_camera"></video>
    
<form action="qr_action.php" method="post">
    <input type="text" name="qr_user_id" id="qr_user_id">
</form>

<form action="../index.php" method="post">
    <button type="submit">Logout</button>
</form>

<script>
    // Start camera
    var onScreenVideo = document.getElementById("qr_camera");
    var text = document.getElementById("qr_user_id");

    var scanner = new Instascan.Scanner({
        video : onScreenVideo
    })

    Instascan.Camera.getCameras().then(function(cameras) {
        if (cameras.length > 0) {
            scanner.start(cameras[1]);
        }
        else {
            console.error('No cameras found.');
        }
    })

    // Submittoing text gained from qr code into database
    scanner.addListener('scan', function(input_value) {
        text.value = input_value;

        document.forms[0].submit();
    })
</script>