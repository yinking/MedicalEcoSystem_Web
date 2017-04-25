package neu.ying.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import neu.ying.dao.CompoundCatalogDao;
import neu.ying.dao.CompoundDao;
import neu.ying.entities.Compound;
import neu.ying.entities.CompoundCatalog;
import neu.ying.validator.CompoundValidator;

@Controller
public class CompoundController {

	@RequestMapping(value = { "/compoundList" }, method = RequestMethod.GET)
	public ModelAndView updateCompound(Model model, HttpServletRequest request) {
		List<Compound> compounds = new CompoundDao().findAll();
		System.out.println(compounds.size() + "");
		return new ModelAndView("compound-list", "compounds", compounds);
	}

	// @RequestMapping(value = { "/newCompound" }, method = RequestMethod.GET)
	// public ModelAndView newCompound(Model model, HttpServletRequest request)
	// {
	// CompoundCatalogDao dao = new CompoundCatalogDao();
	// List<CompoundCatalog> categories = dao.findAll();
	// return new ModelAndView("new-compound", "categories", categories);
	// }

	@RequestMapping(value = { "/editCompound" }, method = RequestMethod.GET)
	public String editCompound(Model model, HttpServletRequest request) {
		String id = request.getParameter("id");
		if (StringUtils.isNotBlank(id)) {
			int idCompound = Integer.parseInt(request.getParameter("id"));
			Compound compound = new CompoundDao().find(idCompound);

			System.out.println("editCompound---idCompound" + idCompound);
			model.addAttribute("compound", compound);
			model.addAttribute("selectedCateg", compound.getIdCompoundCatalog());
		}
		System.out.println("editCompound---idCompound");

		CompoundCatalogDao dao = new CompoundCatalogDao();
		List<CompoundCatalog> categories = dao.findAll();
		model.addAttribute("categories", categories);

		return "new-compound";
	}

	@RequestMapping(value = { "/compoundSearch" }, method = RequestMethod.GET)
	public String searchCompound(Model model, HttpServletRequest request) {
		String queryStr = request.getParameter("queryStr");
		String type = request.getParameter("type");
		CompoundDao dao = new CompoundDao();
		List<Compound> compounds = null;
		if (type.equals("Name")) {
			compounds = dao.searchCompoundByName(queryStr);

		} else if (type.equals("CompoundId")) {

			compounds = dao.findCompoundById(queryStr);
		} else {// Formula
			compounds = dao.searchCompoundByFomula(queryStr);
		}

		System.out.println("type" + type);

		System.out.println("compounds---size" + compounds.size());

		model.addAttribute("compounds", compounds);

		return "compound-list";
	}

	@RequestMapping(value = { "/testIndex" }, method = RequestMethod.POST)
	public String testCompound(Model model, HttpServletRequest request) {
		String id = request.getParameter("id");
		if (StringUtils.isNotBlank(id)) {
			int idCompound = Integer.parseInt(request.getParameter("id"));
			Compound compound = new CompoundDao().find(idCompound);

			System.out.println("editCompound---idCompound" + idCompound);
			model.addAttribute("compound", compound);
		}
		System.out.println("testIndex---testIndex");

		CompoundCatalogDao dao = new CompoundCatalogDao();
		List<CompoundCatalog> categories = dao.findAll();
		model.addAttribute("categories", categories);
		return "new-compound";
	}

	// save compound

	@Autowired
	@Qualifier("compoundValidator")
	CompoundValidator validator;

	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}

	@RequestMapping(value = "saveCompound", method = RequestMethod.GET)
	protected String saveCompound(Model model) throws Exception {
		CompoundCatalogDao dao = new CompoundCatalogDao();
		List<CompoundCatalog> categories = dao.findAll();
		model.addAttribute("categories", categories);
		model.addAttribute("compound", new Compound());
		System.out.println("GET--saveCompound");
		return "new-compound";

	}

	@RequestMapping(value = "saveCompound", method = RequestMethod.POST)
	public String saveCompound(HttpServletRequest request, @ModelAttribute("compound") Compound compound, Model model,
			BindingResult result) {

		System.out.println("toString" + compound.toString());
		CompoundCatalogDao dao = new CompoundCatalogDao();
		List<CompoundCatalog> categories = dao.findAll();
		model.addAttribute("categories", categories);

		validator.validate(compound, result);
		if (result.hasErrors()) {
			model.addAttribute("selectedCateg", compound.getIdCompoundCatalog());
			return "new-compound";
		} else {
			model.addAttribute("saved", true);
			model.addAttribute("compound", new Compound());
			return "new-compound";

		}

	}

}
