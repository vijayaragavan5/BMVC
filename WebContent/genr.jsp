<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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

<%!
public String validate(int val){
	double s = val;
if(s<=8 || s<=9) {
 return "3.5";
 } else  if(s<=10 || s<=12) { return "4";
 }else  if(s<=13 || s<=14) { return "4.5";
 }else  if(s<=15 || s<=18) { return "5"; 
 }else  if(s<=19 || s<=22) { return "5.5"; 
}else  if(s<=23 || s<=26) { return "6"; 
 }else  if(s<=27 || s<=29) { return "6.5";
}else  if(s<=30 || s<=32) { return "7"; 
 }else  if(s<=33 || s<=34) { return "7.5"; 
}else  if(s<=35 || s<=36) { return "8"; 
 }else  if(s<=37 || s<=38) { return "8.5"; 
 }else  if(s<=39 || s<=40) { return "9"; 
 }
return "0";
 }
 %>   
    
  <% 
  
  String cid=request.getParameter("id");
  String cname=request.getParameter("cname");
  String cat=request.getParameter("cat");
  String cat1=request.getParameter("cat1");
  String cat2=request.getParameter("cat2");
  String cat3=request.getParameter("cat3");
  String ints=request.getParameter("score");
  String ints1=request.getParameter("score1");
  String ints2=request.getParameter("score2");
  String ints3=request.getParameter("score3");
  String status="Uploaded"; 
  int s=Integer.parseInt(ints);
  int s1=Integer.parseInt(ints1);
  int s2=Integer.parseInt(ints2);
  int s3=Integer.parseInt(ints3);
    try
    {
       Connection con=databasecon.getconnection();
       Statement st=con.createStatement();
       
        st.addBatch("insert into ieltsscore(Application_id,CName,Catagory,Score) values('"+cid+"','"+cname+"','"+cat+"','"+validate(s)+"')");
        st.addBatch("insert into ieltsscore(Application_id,CName,Catagory,Score) values('"+cid+"','"+cname+"','"+cat1+"','"+validate(s1)+"')");
        st.addBatch("insert into ieltsscore(Application_id,CName,Catagory,Score) values('"+cid+"','"+cname+"','"+cat2+"','"+validate(s2)+"')");
        st.addBatch("insert into ieltsscore(Application_id,CName,Catagory,Score) values('"+cid+"','"+cname+"','"+cat3+"','"+validate(s3)+"')");
       
       
        int i[]=st.executeBatch();
     
	
		if(i[0]>0)  {
		 out.print("<html><body><script>alert('Uploaded successfully');</script></body></html>"); 
		RequestDispatcher rd=request.getRequestDispatcher("resultup.jsp");
		rd.include(request, response);
		
		}else {
			out.print("<html><body><script>alert('Error in booking!!');</script></body></html>"); 
		}
	  
	
	
	try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	PreparedStatement ps=connection.prepareStatement("Update exambooked set status=? where Application_id='"+cid+"'");
	ps.setString(1,status);
	int x=ps.executeUpdate();
	%>
     
      
    <% }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    %>
      
    <% }
    catch(Exception e2)
    {
    	e2.printStackTrace();
    }
    %>
    
</body>
</html>