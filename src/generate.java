
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;
import org.apache.poi.util.SystemOutLogger;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class generate
 */
@WebServlet("/generate")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class generate extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String connectionURL = "jdbc:mysql://localhost:3306/ielts";
		String user = "root";
		String pass = "root";
		response.setContentType("text/html");
		String[] a = request.getParameterValues("catagery");
		String sc = request.getParameter("score");
		float score = Float.parseFloat(sc);
		String cat = null;
		String tab = null;
		String cond = null;
		List list = new ArrayList();
		Map map = null;
		String filter = null;
		for (int i = 0; i < a.length; i++) {
			cat += a[i].toLowerCase() +"="+score+" AND ";
			tab +=a[i].toLowerCase()+" "+a[i].toLowerCase()+",";
			cond+=a[i].toLowerCase()+".Score="+sc+" AND ";
			if(i==0) {
				filter = a[i].toLowerCase()+".CName, "+a[i].toLowerCase()+".Application_id, "+a[i].toLowerCase()+".Score";
			}
		}
		cat = cat.replaceAll("null", "");
		cat = cat.substring(0, cat.lastIndexOf("AND"));
		cond = cond.replaceAll("null", "");
		cond = cond.substring(0, cond.lastIndexOf("AND"));
		tab = tab.replaceAll("null", "");
		tab = tab.substring(0, tab.lastIndexOf(","));
		Connection con = null;
		HttpSession ses = request.getSession();
		System.out.println("cat>>"+cat);
		System.out.println("tab>>"+tab);
		System.out.println("cond>>"+cond);
		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(connectionURL, user, pass);
			Statement st = (Statement) con.createStatement();
			Statement st2 = (Statement) con.createStatement();
			System.out.println("SELECT "+filter+" FROM "+tab+" where "+cond+" group by "+filter);
			ResultSet rs = st.executeQuery("SELECT "+filter+" FROM "+tab+" where "+cond+" group by "+filter);

			while (rs.next()) {
				
							map = new HashMap<>();
							map.put("Cname", rs.getString("Cname"));
							map.put("Application_id", rs.getString("Application_id"));
							map.put("Score", rs.getString("Score"));
							list.add(map);
				
			}
			System.out.println(list);
			ses.setAttribute("list", list);
			response.sendRedirect("viewresult.jsp");
		} catch (Exception i) {
			i.printStackTrace();
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (Exception i) {
					i.printStackTrace();
				}
			}

		}
	}

}
