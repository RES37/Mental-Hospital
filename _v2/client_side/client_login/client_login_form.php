<!-- Login Form to access qr_scanner.php -->
<h1>Login</h1>

<form action="client_login/client_login_action.php" method="post">
        <label for="client_login_STRAND">Strand:</label>
        <input type="text" name="client_login_STRAND" id="client_login_STRAND"><br><br>

        <label for="client_login_PASSWORD">Password:</label>
        <input type="password" name="client_login_PASSWORD" id="client_login_PASSWORD"><br><br>
        
        <button type="submit">Login</button>
</form>

<button onClick="window.location.href='../../index.php';">Home</button>