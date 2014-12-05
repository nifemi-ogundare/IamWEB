package ng.nifemi.iamweb;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import ng.nifemi.iamcore.person.Identity;
import ng.nifemi.iamcore.person.User;
import ng.nifemi.iamcore.storage.IdentityDAO;
import ng.nifemi.iamcore.storage.UserDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.config.AutowireCapableBeanFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

/**
 * Servlet implementation class SpringServlet
 */
@WebServlet("/SpringServlet")
public class SpringServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private WebApplicationContext springContext;
	
	@Autowired
	protected
	IdentityDAO identityDao;
	
	@Autowired
	@Qualifier("fakeId")
	protected
	Identity identityPerson;
	
	@Autowired
	protected
    UserDAO userDao;
	
	@Autowired
	@Qualifier("newUser")
	protected
	User newUser;
	     
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SpringServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
        super.init(config);
        springContext = WebApplicationContextUtils.getRequiredWebApplicationContext(config.getServletContext());
        final AutowireCapableBeanFactory beanFactory = springContext.getAutowireCapableBeanFactory();
        beanFactory.autowireBean(this);
	}
}
