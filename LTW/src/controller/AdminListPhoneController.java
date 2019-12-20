package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// TODO Auto-generated method stub
		String edit = request.getParameter("edit");
		String delete = request.getParameter("delete");
		PhoneDAO phDAO = new PhoneDAO();
		if (edit == null && delete == null) {
			String offset = "";
			offset = request.getParameter("page");
			if (offset == null) {
				offset = "0";
			}
		
			int count = phDAO.getCountPhone();
			int countpage = count / 10;
			if (count % 10 != 0) {
				countpage++;
			}
			request.setAttribute("countpage", countpage);
			ArrayList<PhoneModel> listPhone = phDAO.listPhone(LIMIT, Integer.parseInt(offset) * 10);
			request.setAttribute("listPhone", listPhone);
			RequestDispatcher rd = request.getRequestDispatcher("/admin/quanlydienthoai.jsp");
			rd.forward(request, response);
		} else if(delete != null && edit == null) {
			if(phDAO.deletePhone(phDAO.getPhoneById(Integer.parseInt(delete)))) {
				response.sendRedirect(request.getContextPath() +"/admin-quan-ly-dien-thoai");
			} 
		} else if (delete == null && edit != null) {
			PhoneModel phone = phDAO.getPhoneById(Integer.parseInt(edit));
			request.setAttribute("phone", phone);
			RequestDispatcher rd = request.getRequestDispatcher("admin/add.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
	
		FileItemFactory factory = new DiskFileItemFactory();

		// Set factory constraints
		// factory.setSizeThreshold(yourMaxMemorySize);
		// factory.setRepository(yourTempDirectory);

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload( factory );
		// upload.setSizeMax(yourMaxRequestSize);

		// Parse the request
		List<FileItem> uploadItems = null;
		try {
			uploadItems = upload.parseRequest( request );
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		for( FileItem uploadItem : uploadItems )
		{
		  if( uploadItem.isFormField() )
		  {
		    String fieldName = uploadItem.getFieldName();
		    String value = uploadItem.getString();
		    
		    System.out.println( fieldName+value );
		  }
		}
	}

}
