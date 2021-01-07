<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String status="Accept"; %>
    <%String id=request.getParameter("id"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try{
					Connection	con2=databasecon.getconnection();
					PreparedStatement ps=con2.prepareStatement("Update pharmacy set status=? where pharmacy_id='"+id+"'");
					ps.setString(1,status);
					int x=ps.executeUpdate();
				   %>
				   <script>
				   alert("Request Update Successfully");
				   window.location="website_approval.jsp";
				   </script>
				   <%
					
					}
					catch (Exception ex) 
					{
						out.println(ex.getMessage());
					}
%>
</body>
</html>