<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

    <title>Identity Access Management System</title>

    <!-- Bootstrap Core CSS -->
    <link href="grayscale/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="grayscale/css/grayscale.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="grayscale/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">
                    <i class="fa fa-play-circle"></i>  <span class="light">Start</span>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden"><a href="#page-top"></a></li>
                    <li><a class="page-scroll" href="#about">About</a></li>
                    <li><a class="page-scroll" href="#create">Create</a></li>
                    <li><a class="page-scroll" href="#search">Search</a></li>
                    <li><a class="page-scroll" href="#list">List</a></li>       
                    <li><a class="page-scroll" href="#update">Update</a></li>
                    <li><a class="page-scroll" href="#delete">Delete</a></li>    
                    <li><a href="exit.jsp">Exit</a></li>                            
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="brand-heading">IAM System</h1>
                        <p class="intro-text">Welcome, <%=session.getAttribute("login") %><br>Created by Nifemi Ogundare</p>
                        <a href="#about" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- About Section -->
    <section id="about" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>About Grayscale</h2>
                <p>Grayscale is a free Bootstrap 3 theme created by Start Bootstrap. It can be yours right now, simply download the template on <a href="http://startbootstrap.com/template-overviews/grayscale/">the preview page</a>. The theme is open source, and you can use it for any purpose, personal or commercial.</p>
                <p>This theme features stock photos by <a href="http://gratisography.com/">Gratisography</a> along with a custom Google Maps skin courtesy of <a href="http://snazzymaps.com/">Snazzy Maps</a>.</p>
                <p>Grayscale includes full HTML, CSS, and custom JavaScript files along with LESS files for easy customization.</p>
            </div>
        </div>
    </section>

    <!-- Create Section -->
    <section id="create" class="content-section text-center">
        <div class="row">
	        <div class="col-lg-8 col-lg-offset-2">
	            <h2>Create an Identity</h2>
		        <p>To create a new identity, enter name, email address, and date of birth below</p>
				<form class="form-horizontal" role="form" name="Createform" action="./Create"method="post">
					<input name="fullName" type="text" class="form-control" id="fullName" placeholder="Full name"/>
					<input name="email" type="email" class="form-control" id="email" placeholder="Email address" />
					<input name="birthDate" type="date" class="form-control" id="birthDate"/>
					<input type="submit" class="btn btn-primary" value=Submit>
				</form>
	        </div>
        </div>
    </section>

    <!-- Search Section -->
    <section id="search" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Search for Identities</h2>
		        <p>Enter a full name, an email, and/or a birth date</p>
				<form class="form-horizontal" role="form" name="Searchform" action="./Search"method="post">
					<input name="fullName" type="text" class="form-control" id="fullName" placeholder="Full name"/>
					<input name="email" type="email" class="form-control" id="email" placeholder="Email address" />
					<input name="birthDate" type="date" class="form-control" id="birthDate"/>
					<input type="submit" class="btn btn-primary" value=Submit>
				</form>				
				<p>Results of your search:</p>	    
				<form name="Resultsform">
				  		 <div>
				      		 <table class="table">
				          		<tr>
				                <th>Unique ID</th>
				                <th>Full Name</th>
				                <th>Email</th>
				                <th>Birth Year</th>
				            </tr>
				          		<c:forEach var="identity" items="${results}">
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
            </div>
        </div>
    </section>

    <!-- List Section -->
    <section id="list" class="content-section text-center">
        <div class="row">
	        <div class="col-lg-8 col-lg-offset-2">
	            <h2>Full List of Identities</h2>
				<form name="Listform">
		   		 <div>
					<table class="table table-bordered">
		   				<tr>
			                <th>Unique ID</th>
			                <th>Full Name</th>
			                <th>Email</th>
			                <th>Birth Year</th>
			            </tr>
		           		<c:forEach var="identity" items="${idList}">
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
				<form class="form-horizontal" role="form" name="listRefreshform" action="./GetList"method="post">
					<input type="submit" class="btn btn-primary" value="Refresh List">
				</form>					
	        </div>
        </div>
    </section>
    
    <!-- Update Section -->
    <section id="update" class="content-section text-center">
        <div class="row">
	        <div class="col-lg-8 col-lg-offset-2">
	            <h2>Update an Identity</h2>
				<div id="updatediv">
			        <p>To update an identity, enter its unique ID.</p>       
			        <form class="form-horizontal" role="form" name="GetUpdateform" action="./GetForUpdate"method="post">
						<input name="uid" type="text" class="form-control" id="uid" placeholder="Unique ID"/>
						<input type="submit" class="btn btn-primary" value=Submit onclick="myFunction()"> 
					</form>						
				</div>
				<div id="updateformdiv" style="display:none">
                    <p>Update the identity information below:</p>
					<form class="form-horizontal" role="form" name="Updateform" action="./Update"method="post">
				    	<input name="uid" type="text" class="form-control" id="uid" value="${person.id}" readonly/>
						<input name="fullName" type="text" class="form-control" id="fullName" value="${person.fullName}"/>
						<input name="email" type="email" class="form-control" id="email" value="${person.email}"/>
						<input name="birthDate" type="date" class="form-control" id="birthDate" value="${person.birthDate}"/>
						<input type="submit" class="btn btn-primary" value=Submit>
					</form> 
				</div>
				<% String show = (String) session.getAttribute("update"); %>
				<script type="text/javascript">
					if ('<%=show%>' == "true") {document.getElementById("updateformdiv").style.display = "block";}
				</script> 							
	        </div>
        </div>
    </section>  
    
    <!-- Delete Section -->
    <section id="delete" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Delete an Identity</h2>
		        <p>To delete an identity from the system, enter its unique ID.</p>
		        <form class="form-horizontal" role="form" name="Deleteform" action="./Delete"method="post">
					<input name="uid" type="text" class="form-control" id="uid" placeholder="Unique ID"/>
					<input type="submit" class="btn btn-danger" value=Submit>
				</form>
            </div>
        </div>
    </section>  
    
    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright &copy; IAM system 2014</p>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="grayscale/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="grayscale/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="grayscale/js/jquery.easing.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="grayscale/js/grayscale.js"></script>

</body>
</html>