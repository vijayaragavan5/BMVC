  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
%>
<!DOCTYPE html>
<html>
<head>
    <title>Bootstrap Template | Design Studio</title>
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
    <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!-- favicons -->
    <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/custom-responsive-style.css">
    <link href="//fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
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
                        <ul class="menu-list">
                            
                            <li><a class="nav-link" href="http://localhost:8080/IELTS/adminindex.jsp">Home</a></li>
                        </ul>
                    </div>
                </div>
                <div class="mobile-menu hidden-lg-up">
                    <ul class="mobile-menu-list">
                        
                        <li><a class="nav-link" href="http://localhost:8080/IELTS/adminindex.jsp">Home</a></li>
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
        <!-- Banner ends here -->
        <!-- Services section starts here -->
        <section id="Services">
            <div class="container">
                <div class="block-heading">
                  
                    <div>
                    		
		</div>
            </div>
             <div class="container">
          
            <div class="col-12">
              <div class="row align-items-center">
                

                <div class="col-lg-12 ml-auto" data-aos="fade-up" data-aos-delay="500">
                
                <h1>REGISTERED STUDENTS DETAILS</h1>
<table border="1" class="col-12">
<tr>
<td>Id</td>
<td>First name</td>
<td>Email</td>
<td>DateofBirth</td>
<td>Gender</td>
<td>City</td>
<td>State</td>
<td>ZipCode</td>
<td>Status</td>
<td>Verify</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from studdet";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("stud_id")%></td>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("state") %></td>
<td><%=resultSet.getString("zcode") %></td>
<td><%=resultSet.getString("status") %></td>
<td><a href="verify.jsp?id=<%=resultSet.getString("stud_id")%>&&name=<%=resultSet.getString("firstname")%>&&email=<%=resultSet.getString("email")%>">Click Here to Accept</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
                  </div>
                
                       <%
  if(session.getAttribute("username")==null)
  {
	  response.sendRedirect("Admin.jsp");
  }
%>
                </div>
            
              </div>
            </div>
                    </div>
                    
		
        </div>
            
        </section>
        <!-- Services section ends here -->
        <!-- About Us section starts here -->
        
        <!-- About Us section ends here -->
        <!-- Portfolio section starts here -->
     
        <!-- Portfolio section ends here -->
        
        <!-- Contact us section starts here -->
       
        <!-- Contact us section ends here -->
        <!-- Footer section starts here -->
        
        <!-- Footer section ends here -->
    </section>
</body>

</html>