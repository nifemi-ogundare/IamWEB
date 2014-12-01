package ng.nifemi.iamweb.system;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import ng.nifemi.iamcore.configuration.Configuration;
import ng.nifemi.iamcore.person.Identity;
import ng.nifemi.iamcore.person.Person;
import ng.nifemi.iamcore.storage.DAO;
import ng.nifemi.iamcore.storage.DerbyDAO;
import ng.nifemi.iamweb.SpringServlet;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends SpringServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search() {
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
		
		identityPerson.setFullName(request.getParameter("fullName"));
		identityPerson.setBirthDate(request.getParameter("birthDate"));
		identityPerson.setEmail(request.getParameter("email"));
		
		List<Person> list = hibernateDao.search(identityPerson);
		
		request.getSession().setAttribute("results", list);
		response.sendRedirect("page.jsp");
	}
}
