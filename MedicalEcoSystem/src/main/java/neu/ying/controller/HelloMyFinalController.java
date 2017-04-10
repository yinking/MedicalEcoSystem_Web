package neu.ying.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/hello")
public class HelloMyFinalController {
	@RequestMapping(value = "index", method = RequestMethod.POST)
	public String index(Model model) {
		model.addAttribute("message", "lol hi...get my final started");
		return "hello";
	}
}
