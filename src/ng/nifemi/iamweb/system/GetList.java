package ng.nifemi.iamweb.system;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.SessionFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import ng.nifemi.iamcore.configuration.Configuration;
import ng.nifemi.iamcore.person.Identity;
import ng.nifemi.iamcore.person.Person;
import ng.nifemi.iamcore.storage.DAO;
import ng.nifemi.iamcore.storage.DerbyDAO;
import ng.nifemi.iamcore.storage.HibernateDAO;
import ng.nifemi.iamweb.SpringServlet;

/**
 * Servlet implementation class GetList
 */
@WebServlet("/GetList")
public class GetList extends SpringServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Person> list = hibernateDao.getList();
		
		request.getSession().setAttribute("idList", list);
		response.sendRedirect("page.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
