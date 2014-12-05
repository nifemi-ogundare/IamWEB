package ng.nifemi.iamweb.system;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ng.nifemi.iamweb.SpringServlet;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends SpringServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
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
		
		String fullName = request.getParameter("fullName");
		String email = request.getParameter("email");
		String birthDate = request.getParameter("birthDate");
		String idsString = request.getParameter("uid");
		
		if (idsString == "" || fullName == "" || email == "" || birthDate == "") { 
			request.getSession().setAttribute("updateOngoing", "false");			
			request.getSession().setAttribute("updateStatus", "Failed.");
		}else{
			identityPerson.setId(Integer.parseInt(idsString));
			identityPerson.setFullName(fullName);
			identityPerson.setEmail(email);
			identityPerson.setBirthDate(birthDate);
			
			identityDao.update(identityPerson);
			request.getSession().setAttribute("updateOngoing", "false");
			request.getSession().setAttribute("updateStatus", "Succeeded.");			
		}

		response.sendRedirect("page.jsp#search");
	}
}
