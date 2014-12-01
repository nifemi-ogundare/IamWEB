<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>IAM: System Menu</title>
</head>
<body>
<h3 class="text-center">IAM System Menu</h3>
	<a href="exit.jsp"><strong>EXIT THE SYSTEM</strong></a>
	<form name="Menuform" action="./Menu"method="post">
		<div class="radio">
		  <label>
		    <input type="radio" name="options" id="options1" value="1">
		    Create a new identity with a name, email, and date of birth and add it to the database.
		  </label>
		</div>
		<div class="radio">
		  <label>
		    <input type="radio" name="options" id="options2" value="2">
		    Search the database for an existing identity
		  </label>
		</div>	
		<div class="radio">
		  <label>
		    <input type="radio" name="options" id="options3" value="3" checked>
		    See a list of all the identities in the database
		  </label>
		</div>	
		<input type="submit" class="btn btn-success" value=Submit />
	</form>
</body>
</html>