package neu.ying.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import neu.ying.dao.CompoundCatalogDao;
import neu.ying.dao.CompoundDao;
import neu.ying.dao.DrugCatalogDao;
import neu.ying.dao.DrugDao;
import neu.ying.entities.Compound;
import neu.ying.entities.CompoundCatalog;
import neu.ying.entities.Drug;
import neu.ying.entities.DrugCatalog;

@Controller
public class DrugController {

	@RequestMapping(value = { "/newDrug" }, method = RequestMethod.GET)
	public String newDrug(Model model, HttpServletRequest request) {
		DrugCatalogDao dao = new DrugCatalogDao();
		List<DrugCatalog> categories = dao.findAll();
		model.addAttribute("categories", categories);
		// compound catalog
		CompoundCatalogDao compoundCatalogDao = new CompoundCatalogDao();
		List<CompoundCatalog> compoundCategories = compoundCatalogDao.findAll();
		model.addAttribute("compoundCategories", compoundCategories);
		CompoundCatalog firstItem = compoundCategories.get(0);
		CompoundDao compoundDao = new CompoundDao();
		List<Compound> compoundList = compoundDao.findCompoundByCategoryID(firstItem.getIdCompoundCatalog() + "");
		model.addAttribute("compoundList", compoundList);
		System.out.println(compoundList.size() + "compoundList size");

		return "new-drug";
	}

	@RequestMapping(value = { "/editDrug" }, method = RequestMethod.GET)
	public String editDrug(Model model, HttpServletRequest request) {

		String idDrug = request.getParameter("idDrug");
		if (StringUtils.isNotBlank(idDrug)) {
			int number = Integer.parseInt(idDrug);
			Drug drug = new DrugDao().find(number);
			model.addAttribute("drug", drug);
			model.addAttribute("selectedCateg", drug.getIdDrugCatalog());
		}

		DrugCatalogDao dao = new DrugCatalogDao();
		List<DrugCatalog> categories = dao.findAll();
		model.addAttribute("categories", categories);
		// compound catalog
		CompoundCatalogDao compoundCatalogDao = new CompoundCatalogDao();
		List<CompoundCatalog> compoundCategories = compoundCatalogDao.findAll();
		model.addAttribute("compoundCategories", compoundCategories);

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
