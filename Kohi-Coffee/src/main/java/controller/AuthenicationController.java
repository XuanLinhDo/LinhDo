package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.UserDAO;
import entity.User;

/**
 * Servlet implementation class AuthenicationController
 */
@WebServlet("/AuthenicationController")
public class AuthenicationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthenicationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String action = request.getParameter("action");

			switch (action) {
			case "LOGIN": {
				login(request, response);
				break;
			}
			case "LOGOUT": {
				logout(request, response);
				break;
			}
			

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	private void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		
		String user_name = request.getParameter("username");
		String password = request.getParameter("password");


		UserDAO userDao = new UserDAO();

		User user = userDao.getUserByUsernameAndPassword(user_name, password);

		if (user == null) {
			response.sendRedirect("sign-in.jsp");

		} else {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			response.sendRedirect("HomeController");

		}
	}

	private void logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		HttpSession session = request.getSession();
		session.removeAttribute("user");
		response.sendRedirect("HomeController");

	}

}
