package neu.ying.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DrugController {

	@RequestMapping(value = { "/newDrug" }, method = RequestMethod.GET)
	public String newDrug(Model model, HttpServletRequest request) {

		return "new-drug";
	}

	@RequestMapping(value = { "/updateDrug" }, method = RequestMethod.GET)
	public String updateDrug(Model model, HttpServletRequest request) {

		return "update-drug";
	}
}
