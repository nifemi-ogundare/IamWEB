<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>IAM: Create an identity</title>

</head>
<body>
	<a href="menu.jsp"><strong>RETURN TO MENU</strong></a>
	<form name="Createform" action="./Create"method="post">
		<div class="form-group">
			<label for="fullName">Full Name</label>
			<input name="fullName" type="text" class="form-control" id="fullName" placeholder="Enter the full name"/>
		</div>
		<div class="form-group">
			<label for="email">Email Address</label>
			<input name="email" type="email" class="form-control" id="email" placeholder="Enter the email address" />
		</div>
		<div class="form-group">
			<label for="birthDate">Date of Birth</label>
			<input name="birthDate" type="date" class="form-control" id="birthDate" placeholder="Enter the Date of Birth" />
		</div>
		<input type="submit" class="btn btn-success" value=Submit>
	</form>
</body>
</html>