<?php
if(!isset($_SESSION['booth_id']) || !isset($_SESSION['booth_strand'])) {
    header("Location: client_qr_index.php");
}
?>

<!-- Case of the qr scanner -->
<div id="main">
    <video id="client_qr_CAMERA"></video>
</div>

<div id="side_bar">
    <button class="logout_bar" onClick="window.location.href='../index.php';">Logout</button>

    <div class="user_bar">Hello, <?php echo $_SESSION['booth_strand']; ?></div>

    <button class="row_bar" id="start_camera" onClick="qrScanner()">Start Camera</button>
    <button class="row_bar"><span id="hide_camera" style="display: none;">Hide Camera</span></button>
    <button class="row_bar"><span id="show_camera" style="display: none;">Show Camera</span></button>
    
    <select class="list_bar" id="camera_select" style="display: none;"></select>

    <form action="client_qr_scanner_action.php" method="post">
        <input type="text" id="client_qr_USER_ID" style="display: none;">
    </form>
</div>

<script>
    var start_camera = document.getElementById("start_camera");
    var hide_camera = document.getElementById("hide_camera");
    var show_camera = document.getElementById("show_camera");
    var hide_list = document.getElementById("camera_select");
    // Start camera
    var onScreenVideo = document.getElementById("client_qr_CAMERA");
    document.getElementById("client_qr_USER_ID").readOnly= true;

    function qrScanner() {
        start_camera.style.display = "none";
        hide_camera.style.display = "initial";
        hide_list.style.display = "initial";
        
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

        // Submitting text gained from qr code into database
        scanner.addListener('scan', function(input_value) {
            client_qr_USER_ID.value = input_value;

            document.forms[0].submit();
        })

        // Hide and Show Camera
        hide_camera.addEventListener('click', function () {
            hide_camera.style.display = "none";
            show_camera.style.display = "initial";
            hide_list.style.display = "none";

            onScreenVideo.style.display = 'none';
            scanner.stop();
        });
        show_camera.addEventListener('click', function () {
            hide_camera.style.display = "initial";
            show_camera.style.display = "none";
            hide_list.style.display = "initial";

            onScreenVideo.style.display = 'block';
            scanner.start();
        });
    }

    // Gets all available media devices in your device
    var videoDevices = navigator.mediaDevices.enumerateDevices()
    .then(devices => {
        // Filter all media devices to only those with 'videoinput'
        var videoDevices = devices.filter(device => device.kind === 'videoinput');
        // Gets select element which is the dropdown box
        var select = document.getElementById('camera_select');
        // Each camera will be save in a created element <option>
        for (var device of videoDevices) {
            var option = document.createElement('option');
            option.value = device.deviceId;
            option.text = '> ' + device.label;
            select.appendChild(option);
        }
    });

    // Adds an event listener that if an option from the <select> tag is clicked, this function will execute
    document.getElementById('camera_select').addEventListener('change', (event) => {
        // This code retrieves the 'deviceId' of the selected camera
        var deviceId = event.target.value;
        var constraints = { deviceId: { exact: deviceId } };
        // This uses the navigator.mediaDevices.getUserMedia() method to activate the camera and display the...
        // ...video on a video element.
        navigator.mediaDevices.getUserMedia({ video: constraints })
        .then(stream => {
            // This code makes the 'videoElement' and 'stream' the same value
            onScreenVideo.srcObject = stream;
            var scanner = new Instascan.Scanner({
                video : onScreenVideo
            })
            scanner.start();

            // Submitting text gained from qr code into database
            scanner.addListener('scan', function(input_value) {
                client_qr_USER_ID.value = input_value;

                document.forms[0].submit();
            })
        })
        .catch(error => {
            console.error(error);
        });
    });
</script>