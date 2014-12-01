<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<title>IAM: Identities list</title>

</head>
<body>
	<a href="menu.jsp"><strong>RETURN TO MENU</strong></a>
	<h2 class="text-center">List of all identities in the database</h2>
	<sql:setDataSource
        var="iam"
        driver="org.apache.derby.jdbc.EmbeddedDriver"
        url="jdbc:derby:C:/iam;create=false"
        user="" password=""
    />
     
    <sql:query var="idList"   dataSource="${iam}">
        SELECT * FROM identities
    </sql:query>
    
	<form name="Listform">
   		 <div>
       		 <table class="table table-striped table-hover table-condensed">
           		<tr>
	                <th>Unique ID</th>
	                <th>Full Name</th>
	                <th>Email</th>
	                <th>Birth Year</th>
	            </tr>
           		<c:forEach var="identity" items="${idList.rows}">
	                <tr>
	                    <td><c:out value="${identity.id}" /></td>
	                    <td><c:out value="${identity.fullName}" /></td>
	                    <td><c:out value="${identity.email}" /></td>
	                    <td><c:out value="${identity.birthDate}" /></td>
	                </tr>
            	</c:forEach>
        	</table>
    	</div>
	</form>
	
	<h4 class="text-center">To update or delete an identity, you must enter its unique ID.</h4>
	<form name = actionform action="./Redirect"method="post">
		<div>
			<input type="submit" class="btn btn-primary btn-block" name="update" value="Update an Identity">
		</div>
		<div>
			<input type="submit" class="btn btn-danger btn-block" name="delete" value="Delete an Identity">
		</div>
	</form> 
</body>
</html>