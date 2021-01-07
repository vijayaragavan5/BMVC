

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class candilogin
 */
@WebServlet("/candilogin")
public class candilogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
     
        
        if(check.checkUser(email, password))
        {
            HttpSession session = request.getSession();
            session.setAttribute("email", email);
            response.sendRedirect("candiindex.jsp");
        }
        else
        {
        	out.print("<html><body><script>alert('Username or Password incorrect!');</script></body></html>");
           
        }
        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
		rd.include(request, response);
		} 
}
	
	
