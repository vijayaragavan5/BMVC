<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" class="col-12">
<tr>
<td>Test Date</td>
<td>Type</td>
<td>Fees</td>
<td>Action</td>

</tr>
<%
String t=request.getParameter("type");
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from ieltsdate where Type='"+t+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("TestDate")%></td>
<td><%=resultSet.getString("Type") %></td>
<td><%=resultSet.getString("Fees") %></td>
<td><a href="verify.jsp?id=<%=resultSet.getString("TestDate")%>">Book Now</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
</body>
</html>