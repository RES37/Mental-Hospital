<?php
if(!isset($_SESSION['booth_id'])) {
    header("Location: client_qr_index.php");
}
?>

<!-- Case of the qr scanner -->
<div id="container">
    <video id="client_qr_CAMERA" style="width: 100%; height: 95%;"></video>
</div>

<form action="client_qr_action.php" method="post">
    <input type="text" name="client_qr_USER_ID" id="client_qr_USER_ID" style="display: none;">
</form>


<script>
    // Start camera
    var onScreenVideo = document.getElementById("client_qr_CAMERA");
    var text = document.getElementById("client_qr_USER_ID").readOnly= true;

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
        client_qr_USER_ID.value = input_value;

        document.forms[0].submit();
    })
</script>