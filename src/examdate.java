

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
 * Servlet implementation class examdate
 */
@WebServlet("/examdate")
public class examdate extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		       
		String d=request.getParameter("date");  
		String t=request.getParameter("type");  
		
		          
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ielts","root","root"); 
		  
		PreparedStatement ps=con.prepareStatement("insert into ieltsdate(TestDate,Type) values(?,?)");  
	
		ps.setString(1,d);  
		ps.setString(2,t);  
		
		int i=ps.executeUpdate(); 
		
		if(i>0)  {
			out.print("<html><body><script>alert('successfully updated');</script></body></html>");
		
		
		}else {
			out.print("<html><body><script>alert('Error in updating!!');</script></body></html>"); 
		}
		RequestDispatcher rd=request.getRequestDispatcher("examdate.jsp");
		rd.include(request, response);
		}catch (Exception e2) {System.out.println(e2);}  
		
		out.close();  
	}
	}


