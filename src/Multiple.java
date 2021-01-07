import java.io.IOException;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CreateTables
 */
@WebServlet("/Segregate")
public class Multiple extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	List tab = new ArrayList<>();	
	ResultSet rs = null; 
	try{  
	 Class.forName("com.mysql.jdbc.Driver");  
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ielts","root","root");   
	 con.setAutoCommit(false);  
	 tab.add("Listening");tab.add("Speaking");tab.add("Reading");tab.add("Writing");
	 DatabaseMetaData dbm = con.getMetaData();
	 Statement stmt=con.createStatement();  
	 for(int i=0;i<tab.size();i++) {
		 rs = dbm.getTables(null, null, tab.get(i).toString(), null);
		 if (rs.next()) {
		    System.out.println("table exists"+tab.get(i).toString());	
		    stmt.addBatch("INSERT INTO "+tab.get(i).toString()+" (Application_id,CName,Score,Catagory) " + 
		    		"SELECT Application_id,CName,Score,Catagory FROM ieltsscore where Catagory='"+tab.get(i).toString()+"'");
		 }else {
			System.out.println("Table does not exist"+tab.get(i).toString()); 
		    stmt.addBatch("create table "+tab.get(i).toString()+" as select * from ieltsscore where Catagory='"+tab.get(i).toString()+"'");  
		 }
	 }	
	/*stmt.addBatch("delete from media where Genre in('Sports','News','Movies','Arts')");  */
	stmt.executeBatch();//executing the batch  
	con.commit();  
	con.close(); 
	rs.close();
	
	HttpSession http = request.getSession();
    http.setAttribute("msg", "Segregated Succesfully");
	response.sendRedirect("process.jsp");

	}catch(Exception e){ 
		e.printStackTrace();
	}  
}

}
