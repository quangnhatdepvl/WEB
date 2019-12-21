package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import model.Role;
import model.UserModel;

/**
 * Servlet implementation class LoginController
 */
@WebServlet(urlPatterns = "/dang-nhap")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("/user/login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserDAO userDAO = new UserDAO();
		UserModel user = userDAO.login(username, password);
		if (user.getUser_id() == 0) {
			String error = "Ten dang nhap hoac mat khau khong chinh xac";
			request.setAttribute("error", error);
			RequestDispatcher rd = request.getRequestDispatcher("/user/login.jsp");
			rd.forward(request, response);
		} else {
			ArrayList<Role> roles = user.getRoles();
			HttpSession session = request.getSession(true);
			for (Role role : roles) {
				session.setAttribute("user", user);
				if (role.getRole_name().equals("ROLE_ADMIN")) {
					response.sendRedirect(request.getContextPath() + "/admin-trang-chu");
					break;
				} else {
					response.sendRedirect(request.getContextPath() + "/trang-chu");
				}
			}
		}
	}

}
