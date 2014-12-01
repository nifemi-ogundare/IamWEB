package ng.nifemi.iamweb.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ng.nifemi.iamcore.authenticating.Authenticator;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L; 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		System.out.println("authenticating with " + login + " and " + password);
		
		request.getSession().setAttribute("login", login);
		request.getSession().setAttribute("password", password);
		
		Authenticator authenticator = new Authenticator();
		authenticator.authenticate(login, password);
		
		/*if (authenticator.isAdmin()) {
			response.sendRedirect("admin.jsp");
			return;
		}*/
		
		if (authenticator.isAuthenticated()) {
			response.sendRedirect("page.jsp");
		}else{
			response.sendRedirect("authError.jsp");
			return;
		}
	}
}
