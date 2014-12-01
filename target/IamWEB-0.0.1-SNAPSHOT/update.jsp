<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>IAM: Update an identity</title>

</head>
<body>
	<a href="menu.jsp"><strong>RETURN TO MENU</strong></a>
	<p>Enter the unique id of the identity you want to modify, choose field you want to change, and enter the updated information</p>
	<form name="Createform" action="./Update"method="post">
		<div class="form-group">
			<label for="id">id</label>
			<input name="id" type="text" class="form-control" id="id" placeholder="Enter uid"/>
		</div>
		<div class="form-group">
			<select multiple class="form-control" name="choice">
				<option value="1">Update First Name</option>
				<option value="2">Update Last Name</option>
				<option value="3">Update Email Address</option>
				<option value="4">Update Birth Year</option>
			</select>
		</div>
		<div class="form-group">
			<label for="newInfo">New Information</label>
			<input name="newInfo" type="text" class="form-control" id="newInfo" placeholder="Enter the updated information"/>
		</div>
		<input type="submit" class="btn btn-success" value=Submit>
	</form>
</body>
</html>