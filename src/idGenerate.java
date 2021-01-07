import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;



public class idGenerate {
	public static void main(String[] args) {
		
	String a=null;
	
	
	try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ielts","root","root"); 
	  
		Statement statement = (Statement) con.createStatement();
		 
		ResultSet rs = (ResultSet) statement.executeQuery("select  max(stud_id) as stud_id from studenroll");

	if(rs.next())  {
		 a=rs.getString("stud_id");
		
	
	}
	String a11=a.substring(0, 5);
	String id1=a.replace(a11, "");
	int id=Integer.parseInt(id1);
	id=id+1;
	String uniq = a11+id;
	System.out.println(uniq);
	}catch (Exception e2) {System.out.println(e2);}  
	
	  
}
}



