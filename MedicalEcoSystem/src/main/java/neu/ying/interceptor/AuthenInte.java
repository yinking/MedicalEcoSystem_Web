package neu.ying.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import neu.ying.entities.User;

/**
 * 拦截需要登录的页面
 */
public class AuthenInte implements HandlerInterceptor {

	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		String path = request.getContextPath();
		String uri = request.getRequestURI();
		// System.out.println("uri--preHandle"+uri);
		User user = (User) request.getSession().getAttribute("user");
		if (uri.equals("/MedicalEcoSystem/login") || uri.equals("/MedicalEcoSystem/index")) {
			return true;
		} else if (user == null) {
			response.sendRedirect(request.getContextPath() + "/login");
			return false;
		} else {
			return true;
		}
	}
}
