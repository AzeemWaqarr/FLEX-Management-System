<%@ Page Language="C#" AutoEventWireup="true" CodeFile="in1.aspx.cs" Inherits="in1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Login Page</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
		}

		form {
			background-color: white;
			padding: 20px;
			max-width: 500px;
			margin: 0 auto;
			margin-top: 50px;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0,0,0,0.3);
		}

		h2 {
			text-align: center;
		}

		label {
			display: block;
			margin-bottom: 10px;
		}

		input[type="text"], input[type="password"] {
			width: 100%;
			padding: 10px;
			margin-bottom: 20px;
			border: none;
			border-radius: 5px;
			box-shadow: 0 0 5px rgba(0,0,0,0.1);
		}

		input[type="submit"] {
			background-color: #4CAF50;
			color: white;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}

		input[type="submit"]:hover {
			background-color: #3e8e41;
		}

		.error {
			color: red;
			margin-top: 10px;
		}
	</style>
</head>
<body>
	<form>
		<h2>Login</h2>
		<label for="username">Username</label>
		<input type="text" id="username" name="username">

		<label for="password">Password</label>
		<input type="password" id="password" name="password">

		<input type="submit" value="Login">

		<div class="error">
			<!-- Display error message here -->
		</div>
	</form>
</body>
</html>

</html>
