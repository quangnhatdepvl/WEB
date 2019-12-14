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
 * Servlet implementation class AdminListPhoneController
 */
@WebServlet("/admin-quan-ly-dien-thoai")
public class AdminListPhoneController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int LIMIT = 10;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminListPhoneController() {
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
		String offset = "";
		offset = request.getParameter("page");
		if (offset == null) {
			offset = "0";
		}
		PhoneDAO phDAO = new PhoneDAO();
		int count = phDAO.getCountPhone();
		int countpage = count / 10;
		if (count % 10 != 0) {
			countpage++;
		}
		request.setAttribute("countpage", countpage);
		ArrayList<PhoneModel> listPhone = phDAO.listPhone(LIMIT, Integer.parseInt(offset)*10);
		request.setAttribute("listPhone", listPhone);
		RequestDispatcher rd = request.getRequestDispatcher("/admin/quanlydienthoai.jsp");
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
