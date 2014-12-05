package ng.nifemi.iamweb.system;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ng.nifemi.iamcore.person.Identity;
import ng.nifemi.iamweb.SpringServlet;

/**
 * Servlet implementation class Get
 */
@WebServlet("/Get")
public class Get extends SpringServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Get() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idsString = request.getParameter("selectedId");
		if (idsString == "" || idsString == null) {
			response.sendRedirect("page.jsp#search");
		}else{
			int uid = Integer.parseInt(idsString);
			
			identityPerson = (Identity) identityDao.getById(uid);
			
			if (request.getParameter("updatebutton") != null) {
				request.getSession().setAttribute("person", identityPerson);
				request.getSession().setAttribute("updateOngoing", "true");
				response.sendRedirect("page.jsp#modify");
			}
			
			if (request.getParameter("deletebutton") != null) {
				request.getSession().setAttribute("persontodelete", identityPerson);
				request.getSession().setAttribute("deleteOngoing", "true");
				response.sendRedirect("page.jsp#modify");
			}
		}
	}
}
