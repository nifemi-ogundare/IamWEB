package ng.nifemi.iamweb.system;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ng.nifemi.iamweb.SpringServlet;

/**
 * Servlet implementation class Create
 */
@WebServlet("/Create")
public class Create extends SpringServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Create() {
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
		
		if (fullName =="" || email == "" || birthDate == "") { 
			request.getSession().setAttribute("createStatus", "failed.");
		}else{
			
			identityPerson.setFullName(fullName);
			identityPerson.setBirthDate(birthDate);
			identityPerson.setEmail(email);
			
			identityDao.save(identityPerson);
			request.getSession().setAttribute("createStatus", "succeeded.");
		}
		
		response.sendRedirect("page.jsp#create");
	}
}
