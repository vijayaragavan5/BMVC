<!DOCTYPE html>
<html lang="en">

<head>
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
String loc=null;
%>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms </title>

    <!-- Icons font CSS-->
    <link href="vendor6/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor6/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor6/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor6/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css6/main.css" rel="stylesheet" media="all">
</head>

<body>
<%
String val=request.getParameter("se");
String email=String.valueOf(session.getAttribute("email"));
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select TestDate,ExamLocation from exambooked where CandiateName = '"+val+"'";

resultSet = statement.executeQuery(sql);

if(resultSet.next()){
%>

<%
season = resultSet.getString("TestDate");
loc = resultSet.getString("ExamLocation");
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">REQUEST FOR TRANSFER</h2>
                    <form action="reqloc" method="post">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Applicant name</label>
                                    <input class="input--style-4" type="text" value=<%=val%> readonly name="first_name">
                                </div>
                            </div>
                             <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Date</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="text" name="date">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Place</label>
                                    <input class="input--style-4" type="text" name="place">
                                </div>
                            </div>
                        </div>
                       <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Test Date</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="text" value=<%=season%> name="testdate">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Request for:</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Transfer
                                            <input type="radio" checked="checked" name="request" value="Transfer">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Cancellation
                                            <input type="radio" name="request" value="Cancellation">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div><label><h3>PERSONAL DETAILS</h3></label>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Name(registered)</label>
                                    <input class="input--style-4" type="text" value=<%=val%> name="name">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Test Location Registered for</label>
                                    <input class="input--style-4" type="text" value=<%=loc%> readonly name="preloc">
                                </div>
                            </div>
                        </div>
                         <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="email" value=<%=email%> readonly>
                                </div>
                            </div>
                             <div class="col-2">
                                <div class="input-group">
                                    <label class="label">New Test Location(if applicable)</label>
                                    <input class="input--style-4" type="text" name="newloc">
                                </div>
                            </div>
                            </div>
                        </div>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor6/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor6/select2/select2.min.js"></script>
    <script src="vendor6/datepicker/moment.min.js"></script>
    <script src="vendor6/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js6/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->