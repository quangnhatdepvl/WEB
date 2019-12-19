package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PhoneDAO;
import model.PayInf;

/**
 * Servlet implementation class AdminListOrderController
 */
@WebServlet("/admin-quan-ly-don-hang")
public class AdminListOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminListOrderController() {
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
		String confirm = request.getParameter("confirm");
		if (confirm != null) {
			if (phDAO.confirm(Integer.parseInt(confirm))) {
				response.sendRedirect(request.getContextPath()+"/admin-quan-ly-don-hang");
			}
		} else {

			ArrayList<PayInf> listPay = phDAO.listPay();
			request.setAttribute("listPay", listPay);
			RequestDispatcher rd = request.getRequestDispatcher("/admin/quanlydonhang.jsp");
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
