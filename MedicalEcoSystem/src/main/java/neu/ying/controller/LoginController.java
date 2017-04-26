package neu.ying.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import neu.ying.dao.UserDao;

@Controller
public class LoginController {

	@RequestMapping(value = { "/index" }, method = RequestMethod.GET)
	public String login() {

		return "index2";
	}

	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String index() {

		return "login";
	}

	@RequestMapping(value = { "/login" }, method = RequestMethod.POST)
	public String loginLogic(Model model, HttpServletRequest request, HttpSession session) {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username + "   ###  " + password);
		UserDao dao = new UserDao();
		String centerName = null;
		if (dao.authenticate(username, password) == true) {
			String role = UserDao.getUser().getRole();
			model.addAttribute("role", role);
			if ("SystemAdmin".equals(role)) {
				centerName = "Admin Center";
				System.out.println("SystemAdmin");

			} else if ("Druggist".equals(role)) {
				centerName = "Drug Center";
				System.out.println("Druggist");

			} else {
				System.out.println("Doctor");
			}
		}
		System.out.println("lol");
		session.setAttribute("centerName", centerName);
		session.setAttribute("user", UserDao.getUser());
		model.addAttribute("message", "lol hi...login");
		return "home";
	}

	@RequestMapping("/logout")
	public String loginOut(HttpServletRequest request, HttpSession session) {

		if (session != null) {
			session.invalidate();
		}
		System.out.println("   logout##  ");

		return "login";
	}
}
