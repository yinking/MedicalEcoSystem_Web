package neu.ying.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import neu.ying.dao.CompoundCatalogDao;
import neu.ying.dao.CompoundDao;
import neu.ying.entities.Compound;
import neu.ying.entities.CompoundCatalog;

@Controller
public class CompoundController {

	@RequestMapping(value = { "/updateCompound" }, method = RequestMethod.GET)
	public ModelAndView updateCompound(Model model, HttpServletRequest request) {
		List<Compound> compounds = new CompoundDao().findAll();
		System.out.println(compounds.size() + "");
		return new ModelAndView("update-compound", "compounds", compounds);
	}

	@RequestMapping(value = { "/newCompound" }, method = RequestMethod.GET)
	public ModelAndView newCompound(Model model, HttpServletRequest request) {
		CompoundCatalogDao dao = new CompoundCatalogDao();
		List<CompoundCatalog> categories = dao.findAll();

		return new ModelAndView("new-compound", "categories", categories);

	}

}
