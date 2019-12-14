package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Role;
import model.UserModel;


public class AuthorizationFilter implements Filter {

	private ServletContext context; 
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) arg0; 
		HttpServletResponse response = (HttpServletResponse) arg1;
		String url = request.getRequestURI();
		if(url.startsWith(request.getContextPath()+"/admin")) {
			HttpSession session = request.getSession();
			UserModel user = (UserModel) session.getAttribute("user");
			if(user != null) {
				for(Role role : user.getRoles()) {
					if(role.getRole_name().equalsIgnoreCase("ROLE_ADMIN")) {
						filterChain.doFilter(request, response);
						break;
					} else if(role.getRole_name().equalsIgnoreCase("ROLE_USER")) {
						response.sendRedirect(request.getContextPath() +"/trang-chu");
					}
				}
				
			} else {
				response.sendRedirect(request.getContextPath() +"/dang-nhap");
			}
			
		} else {
			filterChain.doFilter(request, response);
		}
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		context = filterConfig.getServletContext();
		
	}

}
