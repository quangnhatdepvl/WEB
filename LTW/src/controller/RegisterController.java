package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet(urlPatterns = {"/dang-ky"})
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterController() {
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
		RequestDispatcher rd = request.getRequestDispatcher("/user/register.jsp");
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
		String confirm = request.getParameter("confirm");
		String name = request.getParameter("name");
		String sdt = request.getParameter("sdt");
		String email = request.getParameter("email");
		UserDAO usDAO = new UserDAO();
		if (password.equals(confirm)) {
			if (usDAO.register(username, password)) {
				response.sendRedirect("dang-nhap");
			}			
		} else {
			String error = "Tai khoan dang ky khong thanh cong";
			request.setAttribute("error", error);
			RequestDispatcher rd = request.getRequestDispatcher("/user/register.jsp");
			rd.forward(request, response);
		}
	}

}
