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
import model.PhoneModel;

/**
 * Servlet implementation class PhoneController
 */
@WebServlet(urlPatterns = "/trang-chu")
public class HomeUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int SORTBYPRICE = 10;
	private static final int SORTBYDATE = 5;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeUserController() {
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
		
		ArrayList<PhoneModel> sortByPrice = phDAO.sortByPrice(SORTBYPRICE);
		ArrayList<PhoneModel> sortByDate = phDAO.sortByNgaySanXuat(SORTBYDATE);
		request.setAttribute("sortByPrice", sortByPrice);
		request.setAttribute("sortByDate", sortByDate);
		RequestDispatcher rd = request.getRequestDispatcher("/user/index.jsp");
		rd.forward(request, response);
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
