package neu.ying.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import neu.ying.dao.UserDao;

@Controller
public class LoginController {

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String login() {

		return "index";
	}

	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String index() {

		return "login";
	}

	@RequestMapping(value = { "/login" }, method = RequestMethod.POST)
	public String loginLogic(Model model, HttpServletRequest request) {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username + "   ###  " + password);
		UserDao dao = new UserDao();

		if (dao.authenticate(username, password) == true) {
			String role = UserDao.getUser().getRole();
			if ("SystemAdmin".equals(role)) {
				System.out.println("SystemAdmin");

			} else if ("Druggist".equals(role)) {
				System.out.println("Druggist");

			} else {
				System.out.println("Doctor");
			}
		}
		System.out.println("lol");
		model.addAttribute("message", "lol hi...login");
		return "home";
	}
}
