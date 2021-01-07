!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="javax.swing.JOptionPane"%>


<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*"%>
<%@ page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.ResultSet"%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/online_pharmacy";%>
<%!String user = "root";%>
<%!String psw = "root";%>

<%!int id = 0, days = 0;
	static String permisson1 = "ACCEPT";
	static String permisson2 = "REJECT";
	String option = "", email = "", date = "", fdate = "", tdate = "", pname = "", totalprice = "",unitprice = "",quantity= "",name= "",uname="";%>

<%	

		option = request.getParameter("option");
			id = Integer.valueOf(request.getParameter("id"));			
			email = request.getParameter("email");	
			pname = request.getParameter("pname");	
			name = request.getParameter("uname");	
			unitprice = request.getParameter("unitprice");	
			quantity= request.getParameter("quantity");	
			totalprice = request.getParameter("totalprice");	
			Connection con = null;
			PreparedStatement ps = null;
			try 
			{
				Class.forName(driverName);
				con = DriverManager.getConnection(url, user, psw);
				String sql = "UPDATE cart set status=? where uid=?";
				System.out.println(sql);
				ps = con.prepareStatement(sql);
				ps.setString(1,option);
				ps.setInt(2,id);
				int i = ps.executeUpdate();
			   } 
			catch (SQLException sql) 
			{
				request.setAttribute("error", sql);
				out.println(sql);
				System.out.println(sql);
			} 
			
%>
<%
String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="surendar.suryainfo@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="Surya@19"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =email;// out going email id

String from ="kamachishiash@gmail.com"; //Email id of the recipient
//String subject ="welcome";

String subject1="Registered Sucessfully!!!!!";
		String msg1="Dear "+name+", \n Your Product:"+pname+" \n UnitPrice:"+unitprice+" \n Quantity:"+quantity+" \n Your Total Price is:"+totalprice+" \n Enjoyed Your Shopping!!!";


//session.setAttribute("emailid",emailid);
boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject1);
msg.setText(msg1); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());%>

<%}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();
%>
 <script>
  alert("Your Order Placed Successfully");
  window.location="purchased_product.jsp";
</script>

