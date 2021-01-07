   

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class booked
 */
@WebServlet("/booked")
public class booked extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		         
		String d=request.getParameter("date");  
		String t=request.getParameter("type");  
		String n=request.getParameter("name");
		String l=request.getParameter("location");
		String ti=request.getParameter("time");  
		String id=request.getParameter("id"); 
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ielts","root","root"); 
		  
		PreparedStatement ps=con.prepareStatement("insert into exambooked(TestDate,Type,CandiateName,ExamLocation,Time,Application_id) values(?,?,?,?,?,?)");  
		  
		ps.setString(1,d);  
		ps.setString(2,t);
		ps.setString(3,n);
		ps.setString(4,l);
		ps.setString(5,ti);
		ps.setString(6,id);
	
		int i=ps.executeUpdate(); 
		
		if(i>0)  {
			out.print("<html><body><script>alert('successfully booked');</script></body></html>");
		RequestDispatcher rd=request.getRequestDispatcher("candiindex.jsp");
		rd.include(request, response);
		
		}else {
			out.print("<html><body><script>alert('Error in booking!!');</script></body></html>"); 
		}
		   
		}catch (Exception e2) {System.out.println(e2);}  
		
		out.close();  
	}

	}


