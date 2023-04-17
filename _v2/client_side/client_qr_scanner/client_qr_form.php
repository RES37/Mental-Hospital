<?php
if(!isset($_SESSION['booth_id'])) {
    header("Location: client_qr_index.php");
}
?>

<!-- Case of the qr scanner -->
<video id="client_qr_CAMERA"></video>
    
<form action="client_qr_action.php" method="post">
    <input type="text" name="client_qr_USER_ID" id="client_qr_USER_ID">
</form>

<form action="../index.php" method="post">
    <button type="submit">Logout</button>
</form>

<script>
    // Start camera
    var onScreenVideo = document.getElementById("client_qr_CAMERA");
    var text = document.getElementById("client_qr_USER_ID");

    var scanner = new Instascan.Scanner({
        video : onScreenVideo
    })

    Instascan.Camera.getCameras().then(function(cameras) {
        if (cameras.length > 0) {
            scanner.start(cameras[0]);
        }
        else {
            console.error('No cameras found.');
        }
    })

    // Submittoing text gained from qr code into database
    scanner.addListener('scan', function(input_value) {
        client_qr_USER_ID.value = input_value;

        document.forms[0].submit();
    })
</script>