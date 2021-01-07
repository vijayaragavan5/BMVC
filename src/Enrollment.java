

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

import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Enrollment
 */
@WebServlet("/Enrollment")
public class Enrollment extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		String a=null;
		String fn=request.getParameter("firstname");
		String ln=request.getParameter("lastname");
		String em=request.getParameter("email");
		String dob=request.getParameter("dob");
		String gen=request.getParameter("gender");
		String co=request.getParameter("country");
		String str=request.getParameter("street");
		String ar=request.getParameter("area");
		String lm=request.getParameter("lmark");
		String cty=request.getParameter("city");
		String st=request.getParameter("state");
		String zc=request.getParameter("zcode");
		
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ielts","root","root"); 
		  
			Statement statement = (Statement) con.createStatement();
			 
			ResultSet rs = (ResultSet) statement.executeQuery("select  max(stud_id) as stud_id from studdet");

		if(rs.next())  {
			 a=rs.getString("stud_id");
			
		
		}
		String a11=a.substring(0, 5);
		String id1=a.replace(a11, "");
		int id=Integer.parseInt(id1);
		id=id+1;
		String uniq = a11+id;
		System.out.println(uniq);
		   
		
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/ielts","root","root");  
			  
			PreparedStatement ps=con1.prepareStatement("insert into studdet(stud_id,firstname,lastname,email,dob,gender,country,street,area,landmark,city,state,zcode) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");  
			ps.setString(1,uniq); 
			ps.setString(2,fn);  
			ps.setString(3,ln);  
			ps.setString(4,em);  
			ps.setString(5,dob);
			ps.setString(6, gen);
			ps.setString(7, co);
			ps.setString(8, str);
			ps.setString(9, ar);
			ps.setString(10, lm);
			ps.setString(11, cty);
			ps.setString(12, st);
			ps.setString(13, zc);
			          
			int i=ps.executeUpdate();  
			if(i>0)  
				out.print("<html><body><script>alert('successfully booked');</script></body></html>");
			RequestDispatcher rd=request.getRequestDispatcher("candiindex.jsp");
			rd.include(request, response);
			      
		}catch (Exception e2) {
			e2.printStackTrace();}  
        
		out.close();  
		}     
	}


