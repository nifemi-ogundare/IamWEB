<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
	
    <title>IAM Update an identity</title>
    <link href="bootstrap/lavish-bootstrap.css" rel="stylesheet">
    
    <style type="text/css">
    	body { padding-top: 70px; }
    </style>
    
    <link href="navbar.css" rel="stylesheet">
  </head>
  <body>
    <div class="container">
      <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">IAM System</a>
          </div>
          <div class="navbar-collapse collapse">       
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="home.jsp">Home</a></li>
              <li><a href="exit.jsp">Exit</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="jumbotron">
        <p>Update the identity information below:</p>
		<form class="form-horizontal" role="form" name="Updateform" action="./Update"method="post">
	    	<input name="uid" type="text" class="form-control" id="uid" value="${person.id}" readonly/>
			<input name="fullName" type="text" class="form-control" id="fullName" value="${person.fullName}"/>
			<input name="email" type="email" class="form-control" id="email" value="${person.email}"/>
			<input name="birthDate" type="date" class="form-control" id="birthDate" value="${person.birthDate}"/>
			<input type="submit" class="btn btn-primary" value=Submit>
		</form> 
      </div>
    </div>
  </body>
</html>