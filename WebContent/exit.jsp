<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>IAM Sign-in</title>

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

    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
						<p>Are you sure you want to exit? use the back button to continue using the IAM system</p>
						<form name="Logoutform" role="form" action="./Logout"method="post">
						   <button class="btn btn-default btn-lg btn-block" type="submit">Logout</button>
						</form>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
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