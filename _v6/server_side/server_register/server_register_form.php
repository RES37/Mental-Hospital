<div id="container">
        <button class="btn" onClick="window.location.href='../server_login/server_login_index.php';"><i class="fa fa-home"></i></button>
        <h1>Booth Register</h1>

        <form action="server_register_action.php" method="post">
                <label for="server_register_STRAND">Strand:</label>
                <input type="text" name="server_register_STRAND" id="server_register_STRAND" required><br><br>

                <label for="server_register_PASSWORD">Password:</label>
                <input type="password" name="server_register_PASSWORD" id="server_register_PASSWORD" required><br><br>

                <input type="submit" value="Register"></input>
        </form>
</div>