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
 * Servlet implementation class DetailsPhoneController
 */
@WebServlet(urlPatterns = "/chi-tiet-san-pham")
public class DetailsPhoneController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int  LIMIT =4;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailsPhoneController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		PhoneDAO phDAO = new PhoneDAO();
		PhoneModel phone = phDAO.getPhone(Integer.parseInt(id));
		request.setAttribute("phone", phone);
		ArrayList<PhoneModel> listPhone =phDAO.sortByView(LIMIT);
		request.setAttribute("listPhone",listPhone );
		RequestDispatcher rd = request.getRequestDispatcher("user/chitietsp.jsp");
		rd.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
