package ng.nifemi.iamweb.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ng.nifemi.iamweb.SpringServlet;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends SpringServlet {
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
		boolean isAuthenticated = false;
		
		if (login == "" || password == "") {
			
		}else{
			System.out.println("authenticating with " + login + " and " + password);
			
			request.getSession().setAttribute("login", login);
			request.getSession().setAttribute("password", password);
			
			newUser.setPassword(password);
			newUser.setLogin(login);
	
			if (request.getParameter("signin") != null) {
				isAuthenticated = userDao.checkUser(newUser);
			}
			
			if (request.getParameter("newuser") != null) {
				userDao.save(newUser);
				isAuthenticated = userDao.checkUser(newUser);
			}
		}
		
		if (isAuthenticated) {
			response.sendRedirect("page.jsp");
		}else{
			PrintWriter out = response.getWriter();
		    out.println("<script type=\"text/javascript\">");
		    out.println("alert('Login name/Password pair does not exist');");
		    out.println("location='index.jsp';");
		    out.println("</script>");
		}
	}
}
