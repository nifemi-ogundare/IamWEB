<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>IAM: Welcome!</title>
</head>
<body>
<h1>Welcome to the IAM system.
	<small>Good morning, <%=session.getAttribute("login") %></small></h1>
		<form name="continueform">
			<a href="menu.jsp"><strong>Continue</strong></a>
		</form>
</body>
</html>