package ng.nifemi.iamweb.system;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ng.nifemi.iamcore.person.Person;
import ng.nifemi.iamcore.person.PersonFactory;
import ng.nifemi.iamcore.person.PersonFactory.ProductTypes;
import ng.nifemi.iamcore.storage.HibernateDAO;
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
		
		Person updatedPerson = PersonFactory.getInstance(ProductTypes.IDENTITY);
		
		updatedPerson.setId(Integer.parseInt(request.getParameter("uid")));
		updatedPerson.setFullName(request.getParameter("fullName"));
		updatedPerson.setEmail(request.getParameter("email"));
		updatedPerson.setBirthDate(request.getParameter("birthDate"));
		
		hibernateDao.update(updatedPerson);
		
		response.sendRedirect("home.jsp");
	}

}
