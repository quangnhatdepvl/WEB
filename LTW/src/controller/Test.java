package controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

/**
 * Servlet implementation class Test
 */
@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int MAX_MEMORY_SIZE = 1024 * 1024 * 2;
	private static final int MAX_REQUEST_SIZE = 1024 * 1024;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Test() {
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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			if (!isMultipart) {
	            return;
	        }
	        // Create a factory for disk-based file items
	        DiskFileItemFactory factory = new DiskFileItemFactory();
	        // Sets the size threshold beyond which files are written directly to
	        // disk.
	        factory.setSizeThreshold(MAX_MEMORY_SIZE);
	        // Sets the directory used to temporarily store files that are larger
	        // than the configured size threshold. We use temporary directory for
	        // java
	        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
	        // constructs the folder where uploaded file will be stored
	       
	        // Create a new file upload handler
	        ServletFileUpload upload = new ServletFileUpload(factory);
	        // Set overall request size constraint
	        upload.setSizeMax(MAX_REQUEST_SIZE);
	        try {
	            // Parse the request
	            List items = upload.parseRequest(request);
	            Iterator iter = items.iterator();
	            while (iter.hasNext()) {
	                FileItem item = (FileItem) iter.next();

	                if (!item.isFormField()) {
	                	  String fieldName = item.getFieldName();
	                      String fileName1 = FilenameUtils.getName(item.getName());
	                    String fileName = new File(item.getName()).getName();
	                    String DATA_DIRECTORY = request.getServletContext().getRealPath("");
	                    String filePath = DATA_DIRECTORY + File.separator + "img/"+fileName;
	                    File uploadedFile = new File(filePath);
	                 
	                    // saves the file to upload directory
	                    item.write(uploadedFile);
	                }
	            }
	            // displays done.jsp page after upload finished
	            getServletContext().getRequestDispatcher("/done.jsp").forward(
	                    request, response);
	        } catch (FileUploadException ex) {
	            throw new ServletException(ex);
	        } catch (Exception ex) {
	            throw new ServletException(ex);
	        }
	}
	

}
