

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

import com.mysql.jdbc.Statement;


@WebServlet("/instireg")
public class instireg extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String in=request.getParameter("institute");  
		String l=request.getParameter("location");  
		String a=request.getParameter("address");  
		String p=request.getParameter("pincode");  
		String m=request.getParameter("mobile");  
		          
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ielts","root","root"); 
		  
		PreparedStatement ps=con.prepareStatement("insert into instireg values(?,?,?,?,?)");  
		  
		ps.setString(1,in);  
		ps.setString(2,l);  
		ps.setString(3,a);  
		ps.setString(4,p); 
		ps.setString(5,m);  
		          
		int i=ps.executeUpdate(); 
		
		if(i>0)  {
			PreparedStatement ps1=con.prepareStatement("insert into location (count,location) select count(*), location from instireg group by location");
			out.print("<html><body><script>alert('successfully updated');</script></body></html>");
		RequestDispatcher rd=request.getRequestDispatcher("Admin.jsp");
		rd.include(request, response);
		
		}else {
			out.print("<html><body><script>alert('Error in updating!!');</script></body></html>"); 
		}
		   
		}catch (Exception e2) {System.out.println(e2);}  
		
		out.close();  
	

}
}