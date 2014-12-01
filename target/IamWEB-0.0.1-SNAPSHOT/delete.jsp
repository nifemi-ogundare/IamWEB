<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>IAM: Delete an identity</title>

</head>
<body>
	<a href="menu.jsp"><strong>RETURN TO MENU</strong></a>
	<p>Enter the unique id of the identity you want to delete</p>
	<form name="Createform" action="./Delete"method="post">
		<div class="form-group">
			<label for="id">Unique ID</label>
			<input name="id" type="text" class="form-control" id="id" placeholder="Enter unique id"/>
		</div>
		<input type="submit" class="btn btn-danger" value=Submit>
	</form>
</body>
</html>