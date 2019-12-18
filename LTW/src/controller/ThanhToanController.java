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

import dao.PhoneDAO;
import model.Pay;
import model.PhoneModel;
import model.UserModel;

/**
 * Servlet implementation class ThanhToanController
 */
@WebServlet(urlPatterns = "/thanh-toan")
public class ThanhToanController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ThanhToanController() {
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
		RequestDispatcher rd = request.getRequestDispatcher("user/thanhtoan.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		long millis=System.currentTimeMillis();  
		java.sql.Date dateCreate = new java.sql.Date(millis);  
		HttpSession session = request.getSession();
		UserModel user = (UserModel) session.getAttribute("user");
		ArrayList<PhoneModel> listPhone = (ArrayList<PhoneModel>) session.getAttribute("listPhone");
		Pay pay = new Pay(user.getUser_id(), listPhone, false, dateCreate);
		PhoneDAO phDAO = new PhoneDAO();
		if(phDAO.thanhToan(pay)) {
			response.sendRedirect(request.getContextPath()+"/trang-chu");
			session.removeAttribute("listPhone");
		} else {
			response.sendRedirect(request.getContextPath()+"/thanh-toan");
		}
	
		
	}

}
