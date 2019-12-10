package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserModel;

/**
 * Servlet Filter implementation class ShoppingCartFilter
 */
@WebFilter(urlPatterns = "/shopping-cart")
public class ShoppingCartFilter implements Filter {

    /**
     * Default constructor. 
     */
    public ShoppingCartFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		HttpSession session = req.getSession();
		 String userLogin = null;
		  if( session.getAttribute("user")!= null){
	           UserModel user = (UserModel) session.getAttribute("user");
	           userLogin = user.getUser_name();
	        }
	        if(userLogin != null){
	            chain.doFilter(request, response);
	        } else{
	            res.sendRedirect("dang-nhap");
	        }
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
