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
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
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
<style>
    .bs-example{
    	margin: 20px;
    }
</style>
</head>
<body>
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
                    <form action="candilogout" method="get">
                        <ul class="menu-list">
                            <li><a class="nav-link" href="candiindex.jsp">Home</a></li>
                            
                        </ul>
                        </form>
                    </div>
                </div>
                <div class="mobile-menu hidden-lg-up">
                    <ul class="mobile-menu-list">
                        <li><a class="nav-link" href="javascript:void(0)" data-target="#HeroBanner">Home</a></li>
                       
                    </ul>
                </div>
            </nav>
        </header>
        </section>
        <!-- Header ends here -->
        <!-- Banner starts here -->
        <section id="HeroBanner">
            <div class="hero-content">
                <h1>Welcome to IELTS</h1>
                <p>The act of looking at or considering something carefully in order to discover</p>
                
            </div>
          
        </section>
    
        <!-- Banner ends here -->
    
<%String appid=request.getParameter("appid"); %>

  <center><h2>RESULTS</h2></center>
  <div class="bs-example">
    <table class="table">
        <thead class="thead-dark">
      <tr>
        <th>ApplicationID</th>
        <th>Name</th>
        <th>Listening</th>
        <th>Speaking</th>
        <th>Reading</th>
        <th>Writing</th>
      </tr>
     </thead>
     <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from result where Application_id='"+appid+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
    <tbody>
      <tr>
        <td><%=resultSet.getString("Application_id") %></td>
        <td><%=resultSet.getString("Cname") %></td>
        <td><%=resultSet.getString("Listening")%></td>
        <td><%=resultSet.getString("Speaking") %></td>
        <td><%=resultSet.getString("Reading") %></td>
        <td><%=resultSet.getString("Writing") %></td>
      </tr>
    </tbody>
    <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
  </table>
  </div>

<script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
