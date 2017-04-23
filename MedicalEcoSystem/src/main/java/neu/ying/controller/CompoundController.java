package neu.ying.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
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

	@RequestMapping(value = { "/compoundList" }, method = RequestMethod.GET)
	public ModelAndView updateCompound(Model model, HttpServletRequest request) {
		List<Compound> compounds = new CompoundDao().findAll();
		System.out.println(compounds.size() + "");
		return new ModelAndView("compound-list", "compounds", compounds);
	}

	@RequestMapping(value = { "/newCompound" }, method = RequestMethod.GET)
	public ModelAndView newCompound(Model model, HttpServletRequest request) {
		CompoundCatalogDao dao = new CompoundCatalogDao();
		List<CompoundCatalog> categories = dao.findAll();
		return new ModelAndView("new-compound", "categories", categories);
	}

	// @RequestMapping(value = { "/editCompound" }, method = RequestMethod.GET)
	// public String editCompoundGet(Model model, HttpServletRequest request) {
	// // String id = request.getParameter("id");
	// // if(StringUtils.isNotBlank(id)){
	// // User user = userService.find(id);
	// // model.addAttribute("user", user);
	// //
	// // }
	// //
	// // Map<String, Object> params = new HashMap<String, Object>();
	// // params.put("deleteFlag", "0");
	// // List<Role> roles = roleService.findRoles(params);
	// // model.addAttribute("roles", roles);
	// System.out.println("editCompound");
	//
	// return "dialog/role_edit";
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

}
