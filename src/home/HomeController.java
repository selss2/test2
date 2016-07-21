package home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HomeController
 */
@WebServlet({"/intro.do"})
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath();
		String result = path.substring(path.lastIndexOf("/")+1, path.indexOf("."));
		System.out.println(result);
		String view = request.getParameter("cmd");
		RequestDispatcher dis 
		 = request.getRequestDispatcher("/WEB-INF/global/"+ request.getParameter("cmd")+".jsp");
		dis.forward(request, response);
	}
}