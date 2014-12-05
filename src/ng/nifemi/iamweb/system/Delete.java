package ng.nifemi.iamweb.system;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ng.nifemi.iamweb.SpringServlet;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends SpringServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
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
		
		String idsString = request.getParameter("uid");
		if (idsString == "") { 
			request.getSession().setAttribute("deleteStatus", "Failed.");
			request.getSession().setAttribute("deleteOngoing", "false");
		}else{
			int id = Integer.parseInt(idsString);
			
			if (request.getParameter("confirmbutton") != null) {
				identityPerson.setId(id);
				identityDao.delete(identityPerson);
				request.getSession().setAttribute("deleteStatus", "Succeeded.");
				request.getSession().setAttribute("deleteOngoing", "false");
			}
			
			if (request.getParameter("cancelbutton") != null) {
				request.getSession().setAttribute("deleteStatus", "Failed.");
				request.getSession().setAttribute("deleteOngoing", "false");
			} 
		}
		response.sendRedirect("page.jsp#search");
	}

}
