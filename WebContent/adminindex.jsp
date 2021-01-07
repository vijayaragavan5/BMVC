<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Template | Design Studio</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- favicons -->
<link rel="apple-touch-icon" sizes="57x57"
	href="images/favicons/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="images/favicons/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="images/favicons/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="images/favicons/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/favicons/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="images/favicons/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="images/favicons/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="images/favicons/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="images/favicons/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="images/favicons/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="images/favicons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="images/favicons/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="images/favicons/favicon-16x16.png">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<!-- favicons -->
<link rel="stylesheet" type="text/css"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css"
	href="css/custom-responsive-style.css">
<link href="//fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
<script type="text/javascript" src="script/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="script/all-plugins.js"></script>
<script type="text/javascript" src="script/plugin-active.js"></script>
</head>
<body data-spy="scroll" data-target=".main-navigation" data-offset="150">
	<section id="MainContainer">
		<!-- Header starts here -->
		<header id="Header">
			<nav class="main-navigation">
				<div class="container clearfix">
					<div class="site-logo-wrap">
						<a class="logo" href="#">IELTS</a>
					</div>
					<a href="javascript:void(0)" class="menu-trigger hidden-lg-up"><span>&nbsp;</span></a>
					<div class="main-menu hidden-md-down">
						<form action="adminlogout" method="get">
							<ul class="menu-list">
								<li><a class="nav-link" href="javascript:void(0)"
									data-target="#HeroBanner">Home</a></li>
								<li><a class="nav-link"
									href="http://localhost:8080/IELTS/examdate.jsp">Schedule
										Update</a></li>
								<li><a class="nav-link"
									href="http://localhost:8080/IELTS/regch.jsp">Registration
										Checks</a></li>
										<li><a class="nav-link"
									href="segregation.html">Result Segregation</a></li>
								<li><a class="nav-link"
									href="http://localhost:8080/IELTS/pay.jsp">Avaiablity
										Checks</a></li>
								<li><a class="nav-link"
									href="http://localhost:8080/IELTS/trans.jsp">Transfer</a></li>
								<li><input type="submit" value="Logout"
									class="btn section-btn smoothScroll"></li>
							</ul>
						</form>
					</div>
				</div>
				<div class="mobile-menu hidden-lg-up">
					<ul class="mobile-menu-list">
						<li><a class="nav-link" href="javascript:void(0)"
							data-target="#HeroBanner">Home</a></li>
						<li><a class="nav-link"
							href="http://localhost:8080/IELTS/recinst.jsp">Receiving
								Institution</a></li>
						<li><a class="nav-link"
							href="http://localhost:8080/IELTS/regch.jsp">Registration
								Checks</a></li>
								<li><a class="nav-link"
									href="segregate.jsp">Result Segregation</a></li>
						<li><a class="nav-link"
							href="http://localhost:8080/IELTS/pay.jsp">Avaiablity Checks</a></li>
						<li><a class="nav-link"
							href="http://localhost:8080/IELTS/trans.jsp">Transfer</a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Header ends here -->
		<!-- Banner starts here -->
		<section id="HeroBanner">
			<div class="hero-content">
				<h1>Welcome to IELTS</h1>
				<p>The act of looking at or considering something carefully in
					order to discover</p>

			</div>

		</section>
		Welcome ${username}
		<!-- Banner ends here -->
		<!-- Services section starts here -->

		<!-- Services section ends here -->
		<!-- About Us section starts here -->
		<section id="About">
			<div class="container">
				<div class="about-wrapper">
					<h2>About Us</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
						reprehenderit in voluptate velit esse cillum dolore eu fugiat
						nulla pariatur. Excepteur sint occaecat cupidatat non proident,
						sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				</div>
			</div>
		</section>
		<%
  if(session.getAttribute("username")==null)
  {
	  response.sendRedirect("Admin.jsp");
  }
%>
		<!-- About Us section ends here -->
		<!-- Portfolio section starts here -->

		<!-- Portfolio section ends here -->

		<!-- Contact us section starts here -->
		<section id="ContactUs">

			<!-- Contact us section ends here -->
			<!-- Footer section starts here -->
</body>

</html>