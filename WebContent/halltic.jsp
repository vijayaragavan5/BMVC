<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
div {
  border: 1px solid black;
  margin-top: 100px;
  margin-bottom: 100px;
  margin-right: 150px;
  margin-left: 80px;
  background-color: lightgreen;
}
</style>
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
ResultSet result=null;
String season = null;
String date=null;
String loc=null;
String sess=null;
%>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	String name=request.getParameter("name");
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from exambooked where CandiateName='"+name+"'";

resultSet = statement.executeQuery(sql);
if(resultSet.next()){
%>
<center><h1>IELTSExamination</h1></center>
<div id="printdivcontent">
<div>
<center><label>IELTS EXAM ADMIT CARD</label>

<h3>CandidateName:</h3><%=name%>
<h3>TestDate:</h3> <%=resultSet.getString("TestDate") %>
<h3>ExamLocation:</h3><p>HIGHERCOLLEGEOFTECHNOLOGY </p><%=resultSet.getString("ExamLocation") %>

</div>
</center>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</div>

<span></span>
<input type="button" style="color:#FF9800" onclick="PrintDiv();" value="Download">  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

<div id="print-btn"></div>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">  
        function PrintDiv() {  
            var divContents = document.getElementById("printdivcontent").innerHTML;  
            var printWindow = window.open('', '', 'height=200,width=400');  
            printWindow.document.write('<html><head><title>Print DIV Content</title>');  
            printWindow.document.write('</head><body style="background-color:lightgreen">');  
            printWindow.document.write(divContents);  
            printWindow.document.write('</body></html>');  
            printWindow.document.close();  
            printWindow.print();  
        }  
    </script>  

</body>
</html>