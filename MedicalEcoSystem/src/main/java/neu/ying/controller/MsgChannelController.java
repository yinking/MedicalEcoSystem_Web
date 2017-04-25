package neu.ying.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import neu.ying.dao.MessageDao;
import neu.ying.dao.UserDao;
import neu.ying.entities.Message;
import neu.ying.entities.User;

@Controller
public class MsgChannelController {

	@RequestMapping(value = { "/msgChannel" }, method = RequestMethod.GET)
	public String msgChannel(Model model, HttpServletRequest request, HttpSession session) {
		MessageDao dao = new MessageDao();
		User user = (User) session.getAttribute("user");
		List<Message> messages = dao.getMessageByUserID(user.getIdUser() + "");
		System.out.println(messages.size() + "");
		model.addAttribute("messages", messages);
		// userlist
		UserDao userDao = new UserDao();
		List<User> users = userDao.findAll();
		model.addAttribute("users", users);

		return "message";
	}

	@RequestMapping(value = { "/sendMsg" }, method = RequestMethod.GET)
	public String sendMsg(Model model, HttpServletRequest request, HttpSession session) {
		String content = request.getParameter("content");
		String receiver = request.getParameter("user");
		String title = request.getParameter("title");
		System.out.println("user" + receiver + "content" + content);
		User user = (User) session.getAttribute("user");

		Message msg = new Message(user.getIdUser(), Integer.parseInt(receiver), content, null, title);
		MessageDao dao = new MessageDao();
		dao.save(msg);
		return "message";
	}

}
