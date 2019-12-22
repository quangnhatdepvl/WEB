package controller;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
@WebServlet(urlPatterns = { "/dang-ky" })
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
		String error = "";
		UserDAO usDAO = new UserDAO();
		if (password.equals(confirm) && validateName(username)) {
			if (usDAO.register(username, password)) {
				response.sendRedirect("dang-nhap");
			} else {
				error = "Tai khoan da ton tai";
				error(request, response, error);
			}
		} else {
			if (!validateName(username)) {
				error = "Ten dang nhap toi thieu 6 ki tu va khong co khoang trang";
			} else if (!password.equals(confirm)) {
				error = "Mat khau khong trung khop";
			}
			error(request, response, error);
		}
	}

	private void error(HttpServletRequest request, HttpServletResponse response, String error)
			throws ServletException, IOException {
		request.setAttribute("error", error);
		RequestDispatcher rd = request.getRequestDispatcher("/user/register.jsp");
		rd.forward(request, response);
	}

	private boolean validateName(String name) {
		// p{L}là thuộc tính ký tự Unicode phù hợp với bất kỳ loại chữ nào từ bất kỳ
		// ngôn ngữ nào
		String regx = "^([A-Za-z_][A-Za-z0-9_]*){6,30}$";
		Pattern pattern = Pattern.compile(regx, Pattern.CASE_INSENSITIVE);
		Matcher matcher = pattern.matcher(name);
		return matcher.find();

	}
}
