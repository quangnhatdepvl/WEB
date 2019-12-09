package controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.PhoneDAO;
import model.PhoneModel;

/**
 * Servlet implementation class ShoppingCartController
 */
@WebServlet("/shopping-cart")
public class ShoppingCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShoppingCartController() {
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
		String id = request.getParameter("id");
		if (id == null) {
			RequestDispatcher rd = request.getRequestDispatcher("user/cart.jsp");
			rd.forward(request, response);
		} else {
		PhoneDAO phDAO = new PhoneDAO();
		PhoneModel phone = phDAO.getPhone(Integer.parseInt(id));
		HttpSession session = request.getSession();
		session.setAttribute("phone", phone);
		RequestDispatcher rd = request.getRequestDispatcher("user/cart.jsp");
		rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
