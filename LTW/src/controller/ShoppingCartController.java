package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

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
	private static final int LIMIT = 4;

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
		PhoneDAO phDAO = new PhoneDAO();
		ArrayList<PhoneModel> listPhoneView = phDAO.sortByView(LIMIT);
		request.setAttribute("listPhoneView", listPhoneView);

		HttpSession session = request.getSession();
		ArrayList<PhoneModel> listPhone = (ArrayList<PhoneModel>) session.getAttribute("listPhone");
		if (listPhone == null) {
			listPhone = new ArrayList<>();
		}
		String id = request.getParameter("id");
		String delete = request.getParameter("delete");
		if (id == null && delete == null) {
			RequestDispatcher rd = request.getRequestDispatcher("user/cart.jsp");
			rd.forward(request, response);
		} else if (id != null && delete == null) {

			PhoneModel phone = phDAO.getPhone(Integer.parseInt(id));
			listPhone.add(phone);
			session.setAttribute("listPhone", listPhone);
			response.sendRedirect("trang-chu");
		} else if (id == null && delete != null) {

			PhoneModel phone = phDAO.getPhone(Integer.parseInt(delete));
			for (Iterator<PhoneModel> iterator = listPhone.iterator(); iterator.hasNext();) {
				PhoneModel p = iterator.next();
				if (p.getId() == phone.getId()) {
					iterator.remove();
					break;
				}
			}
			session.setAttribute("listPhone", listPhone);
			response.sendRedirect("shopping-cart");
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
