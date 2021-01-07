

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
 * Servlet implementation class reqloc
 */
@WebServlet("/reqloc")
public class reqloc extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		
		String d=request.getParameter("name"); 
		String td=request.getParameter("date");       
		String in=request.getParameter("place");  
		String l=request.getParameter("testdate");  
		String a=request.getParameter("preloc");  
		String p=request.getParameter("newloc");  
		String m=request.getParameter("request");  
		String e=request.getParameter("email");          
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ielts","root","root"); 
		  
		PreparedStatement ps=con.prepareStatement("insert into reqloc(name,date,place,testdate,preloc,newloc,request,email) values(?,?,?,?,?,?,?,?)");  
		  
		ps.setString(1,d);  
		ps.setString(2,td);  
		ps.setString(3,in);  
		ps.setString(4,l); 
		ps.setString(5,a);  
		ps.setString(6, p);
		ps.setString(7,m);
		ps.setString(8, e);
		          
		int i=ps.executeUpdate(); 
		
		if(i>0)  {
			PreparedStatement ps1=con.prepareStatement("insert into location (count,location) select count(*), location from instireg group by location");
			out.print("<html><body><script>alert('Your request is sucessfully updated please wait for the comfirmation mail');</script></body></html>");
		RequestDispatcher rd=request.getRequestDispatcher("candiindex.jsp");
		rd.include(request, response);
		
		}else {
			out.print("<html><body><script>alert('Error in updating!!');</script></body></html>"); 
		}
		   
		}catch (Exception e2) {System.out.println(e2);}  
		
		out.close();  
	

	}

}
