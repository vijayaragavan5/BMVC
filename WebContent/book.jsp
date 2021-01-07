<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<html>
<head>
<title></title>
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
<% 
String val[] = request.getParameter("val").split("@");


%>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Holiday Homes Booking Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<!-- font-awesome-icons -->
<link href="css2/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="css2/style.css" rel='stylesheet' type='text/css' />
<!--fonts--> 
<link href="//fonts.googleapis.com/css?family=Barlow:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<!--//fonts--> 
</head>
<body>
<!--background-->
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
<tr>


</tr>
<%
season = resultSet.getString("name");

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<h1> IELTS Exam Booking </h1>
    <div class="bg-agile">
	<div class="book-appointment">
	<h2>Comfirmation of Booking</h2>
						<div class="book-form agileits-login">
							<form action="booked" method="post">
								<div class="phone_email">
									<label>Test Date : </label>
									<div class="form-text">
										<i class="fa fa-user" aria-hidden="true"></i>
										<input type="text" name="date" value="<%=val[0]%>"readonly><br>
									</div> 
								</div>
								<div class="phone_email phone_email1">
									<label>Type : </label>
									<div class="form-text">
										<i class="fa fa-envelope-o" aria-hidden="true"></i>
										<input type="text" name="type" value="<%=val[1]%>"readonly placeholder="" required="">
									</div>
								</div>
								<div class="phone_email">
									<label>Candiate Name : </label>
									<div class="form-text">
										<i class="fa fa-phone" aria-hidden="true"></i>
											<input type="text" name="name" value="<%=season%>"readonly placeholder="" required="">
									</div> 
								</div> 
								<div class="phone_email phone_email1">
									
								</div> 
								<div class="clear"></div>
								<div class="agileits_reservation_grid">
									<div class="span1_of_1">
									<label>Select Test Location : </label>
										<div class="section_room">
											<i class="fa fa-map-marker" aria-hidden="true"></i>
											<select name="location" id="country1" onchange="change_country(this.value)" class="frm-field required sect">
												<option value="AX"></option>
												<option value="chennai">Chennai</option>
												<option value="bangalore">Bangalore</option>
												<option value="hyderbad">Hyderbad</option> 
												<option value="kolkata">Kolkata</option>         
												<option value="AX">More</option>
											</select>
										</div>					
									</div>
									<div class="span1_of_2">
												
									</div>
									<div class="clear"></div>
									<div class="span1_of_1">
										<label> </label>
										<div class="section_room">
											
											<br><input type=radio name="time" value="09:00AMto12:00PM">ForeNoon<br>09:00AMto12:00PM</br>
										</div>			
										<!-- start_section_room -->
										
									</div>
									<div class="span1_of_2">
										
										<!-- start_section_room -->
										<label>  </label>
										<div class="section_room">
											<br><input type=radio name="time" value="12:00PMto04:00PM">AfterNoon<br>12:00PMto04:00PM</br>
										</div>	
									</div> 									
									<div class="clear"></div>
								</div> 
												
								<input type="submit" value="Comfirm">
							</form>
						</div>

		</div>
   </div>
   
		<script type="text/javascript" src="js2/jquery-2.1.4.min.js"></script>
		<!-- Calendar -->
				<link rel="stylesheet" href="css2/jquery-ui.css" />
				<script src="js2/jquery-ui.js"></script>
				  <script>
						  $(function() {
							$( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
						  });
				  </script>
			<!-- //Calendar -->

</body>
</html>