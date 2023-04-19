<!DOCTYPE html>
<html>
<head>
	<title>Registration Form</title>
</head>
<body>
	<h1>Registration Form</h1>
	<form method="post" action="register/action.php">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" required><br><br>

		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required><br><br>
		
		<input type="submit" value="Register">
	</form>
</body>
</html>