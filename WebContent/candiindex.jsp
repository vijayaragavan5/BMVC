<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Bootstrap Template | Design Studio</title>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "ielts";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
String season = null;
%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- favicons -->
    <link rel="apple-touch-icon" sizes="57x57" href="images/favicons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="images/favicons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/favicons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="images/favicons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/favicons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="images/favicons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="images/favicons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="images/favicons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="images/favicons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="images/favicons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="images/favicons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicons/favicon-16x16.png">
     <link rel="icon" type="image/png" href="images1/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts1/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts1/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor1/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor1/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css1/util.css">
	<link rel="stylesheet" type="text/css" href="css1/main.css">
<!--===============================================================================================-->
<!-- stylesheets -->
	<link rel="stylesheet" href="css/styles.css" type="text/css" media="all">

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- favicons -->
    <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/custom-responsive-style.css">
    <link href="//fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script type="text/javascript" src="script/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="script/all-plugins.js"></script>
    <script type="text/javascript" src="script/plugin-active.js"></script>
    <script>
	function charonly(e) {
        var unicode = e.charCode ? e.charCode : e.keyCode
        if (unicode != 8) {
            if ((unicode != 32 && (unicode < 65 || (unicode > 90 && (unicode < 97 || unicode > 122)))) && unicode != 39 && unicode != 45 && unicode != 9)
                return false
        }
    }
    //////////////
    function numbersonly(e) {
        var unicode = e.charCode ? e.charCode : e.keyCode
        if (unicode != 8) {
            if ((unicode < 48 || unicode > 57) && unicode != 9)
                return false
        }
    }
    function emailValidate(incomingString, defaultValue) {
        if (trimSpace(incomingString).length == 0 || incomingString.search(/^[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/g) == -1 || incomingString == defaultValue) {
            return false;
        }
        else
            return true;
    }
    function mobileno(e){
     /*    if (document.reg.ph.value != '10') { */
       		if (document.reg.ph.value == "")
		{
		        
		        alert('Enter the Phone Number');
		        document.reg.ph.focus();
		        return false;
		}
		    
		    if (!document.reg.ph.value == "")
		    {
		        
		        if(isNaN(document.reg.ph.value) || document.reg.ph.value.length !=10)
		        {
		             alert('Phone Number should be must be 10');
		             document.reg.ph.focus();
		             return false;
		        }
		    }
      
     }
    
	</script>
</head>
<body data-spy="scroll" data-target=".main-navigation" data-offset="150">
<%
String t=request.getParameter("type");
String email=String.valueOf(session.getAttribute("email"));
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select name from cansignup where email = '"+email+"'";

resultSet = statement.executeQuery(sql);

if(resultSet.next()){
%>

<%
season = resultSet.getString("name");

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
    <section id="MainContainer">
        <!-- Header starts here -->
        <header id="Header">
            <nav class="main-navigation">
                <div class="container clearfix">
                    <div class="site-logo-wrap">
                        <a class="logo" href="#">IELTS Online Registration</a>
                    </div>
                    <a href="javascript:void(0)" class="menu-trigger hidden-lg-up"><span>&nbsp;</span></a>
                    <div class="main-menu hidden-md-down">
                    <form action="candilogout" method="get">
                        <ul class="menu-list">
                            <li><a class="nav-link" href="javascript:void(0)" data-target="#HeroBanner">Home</a></li>
                            <li><a class="nav-link" href="javascript:void(0)" data-target="#Services">New Candidate</a></li>
                            <li><a class="nav-link" href="http://localhost:8080/IELTS/booktest.jsp">Book Your Test</a></li>
                            <li><a class="nav-link" href="http://localhost:8080/IELTS/Result.jsp">Results</a></li>
                            <li><a class="nav-link" href="http://localhost:8080/IELTS/Venue.jsp">Venue Transfer</a></li>
                             <li><a class="nav-link" href="http://localhost:8080/IELTS/testdate.jsp?se=<%=season%>">AdmitCard</a></li>
                            
                             <li><input type="submit" value="Logout" class="btn section-btn smoothScroll"></li>
                        </ul>
                        </form>
                    </div>
                </div>
                <div class="mobile-menu hidden-lg-up">
                    <ul class="mobile-menu-list">
                        <li><a class="nav-link" href="javascript:void(0)" data-target="#HeroBanner">Home</a></li>
                        <li><a class="nav-link" href="javascript:void(0)" data-target="#ContactUs"></a>New Candidate</li>
                        <li><a class="nav-link" href="javascript:void(0)" data-target="#"></a>Book Your Test</li>
                        <li><a class="nav-link" href="javascript:void(0)" data-target="#">Results</a></li>
                        <li><a class="nav-link" href="javascript:void(0)" data-target="#">Venue Transfer</a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Header ends here -->
        <!-- Banner starts here -->
        <section id="HeroBanner">
            <div class="hero-content">
                <h1>Welcome to IELTS</h1>
                <p>The act of looking at or considering something carefully in order to discover</p>
                
            </div>
          
        </section>
        
        Welcome <%=season%>
        <!-- Banner ends here -->
        <!-- Services section starts here -->
        <section id="Services">
           <div class="w3ls-banner">
	<div class="heading">
		<h1>General Application Form</h1>
	</div>
		<div class="container">
			<div class="heading">
				<h2>Please Enter Your Details</h2>
				<p>Fill the application form below and submit.</p>
			</div>
			<div class="agile-form">
				<form action="Enrollment" method="post">
					<ul class="field-list">
						<li class="name">
							<label class="form-label"> Name <span class="form-required"> * </span></label>
							<div class="form-input add">
								<span class="form-sub-label">
									<input type="text" name="firstname" placeholder="First Name" onkeypress="return charonly(event)" required>
								</span>
								<span class="form-sub-label">
									<input type="text" name="lastname" placeholder="Last Name" onkeypress="return charonly(event)" required>
								</span>
							</div>
						</li>
						<li> 
							<label class="form-label"> E-Mail Address <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="email" name="email" placeholder="Mail@example.com" required>
							
							</div>
						</li>
						
						<li> 
							<label class="form-label"> Date of Birth <span class="form-required"> * </span></label>
							<div class="form-input">
								<span class="form-sub-label last">
									<input type="date" name="dob" placeholder="date of birth" required>
								</span>
							</div>
						</li>
						<li>
							<label class="form-label"> Gender <span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="gender" required>
									<option value="">Gender</option>
									<option value="Male"> Male </option>
									<option value="Female"> Female </option>
									<option value="Transgender">Transgender </option>
								</select>
							</div>
						</li>
						<li>
							<label class="form-label"> Country <span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="country" required>
									<option value="">Select Country</option>
									<option value="United states"> United states </option>
									<option value="Afghanisthan"> Afghanistan </option>
									<option value="China"> China </option>
									<option value="Indonesia"> Indonesia </option>
									<option value="England"> England </option>
									<option value="Others"> Others </option>
								</select>
							</div>
						</li>
						<li>
							
						</li>
						<li> 
							<label class="form-label">
							   Address
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input add">
								<span class="form-sub-label">
									<input type="text" name="street" placeholder="Street Address " required>
								</span>
								<span class="form-sub-label">
									<input type="text" name="area" placeholder="Street Line 2 " required>
								</span>
								<span class="form-sub-label">
									<input type="text" name="lmark" placeholder="Landmark " required>
								</span>
								<span class="form-sub-label">
									<input type="text" name="city" placeholder="City"  onkeypress="return charonly(event)" required>
								</span>
								<span class="form-sub-label last">
									<input type="text" name="state" placeholder="State / Province "  onkeypress="return charonly(event)" required>
								</span>
								<span class="form-sub-label last">
									<input type="text" name="zcode" placeholder="Postal / Zip Code " required>
								</span>
							</div>
						</li>
					</ul>
					<div class="submit_btn">
						<input type="submit" value="Submit">
					</div>
				</form>	
			</div>
	
		</div>
    </div>
    </section>
        <!-- Services section ends here -->
        <!-- About Us section starts here -->
       
        <%
  if(session.getAttribute("email")==null)
  {
	  response.sendRedirect("index.jsp");
  }
%>

        <!-- About Us section ends here -->
        <!-- Portfolio section starts here -->
     
        <!-- Portfolio section ends here -->
        
        <!-- Contact us section starts here -->
        <section id="ContactUs">
        
        <!-- Contact us section ends here -->
        <!-- Footer section starts here -->
       <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <!--===============================================================================================-->
	<script src="vendor1/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/bootstrap/js/popper.js"></script>
	<script src="vendor1/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/daterangepicker/moment.min.js"></script>
	<script src="vendor1/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js1/main.js"></script>
</body>

</html>