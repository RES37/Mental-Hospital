<!DOCTYPE html>
<html>
<head>
	<title>Registration Form</title>
</head>
<body>
	<h1>Registration Form</h1>
	<form method="post" action="register/reg_action.php">
		<label for="reg_username">Name:</label>
		<input type="text" id="reg_username" name="reg_username" required><br><br>

		<label for="reg_password">Password:</label>
		<input type="password" id="reg_password" name="reg_password" required><br><br>
		
		<input type="submit" value="Register">
	</form>
</body>
</html>