package neu.ying.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import neu.ying.dao.DrugDao;
import neu.ying.entities.Drug;

@Controller
public class DrugController {

	@RequestMapping(value = { "/newDrug" }, method = RequestMethod.GET)
	public String newDrug(Model model, HttpServletRequest request) {
		List<Drug> drugs = new DrugDao().findAll();

		System.out.println(drugs.size() + "");
		return "new-drug";
	}

	@RequestMapping(value = { "/drugList" }, method = RequestMethod.GET)
	public String updateDrug(Model model, HttpServletRequest request) {
		List<Drug> drugs = new DrugDao().findAll();
		System.out.println(drugs.size() + "");
		model.addAttribute("drugs", drugs);
		return "drug-list";
	}
}
