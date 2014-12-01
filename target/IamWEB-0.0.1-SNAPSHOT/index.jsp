<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>IAM: Sign-in</title>
</head>
<body>
	<form name="Loginform" action="./Login"method="post">
		<div class="form-group">
			<label for="login">Login</label>
			<input name="login" type="text" class="form-control" id="login" placeholder="Enter login name" />		
		</div>
		
		<div class="form-group">
			<label for="password">Password</label>	
			<input name="password" type="password" class="form-control" id="password" placeholder="Enter Password" />				
		</div>

		<input type="submit" class="btn btn-success" value="Sign in" />
	</form>
</body>
</html>