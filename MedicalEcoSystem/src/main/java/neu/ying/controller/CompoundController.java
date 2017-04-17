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
public class CompoundController {


	@RequestMapping(value = { "/updateCompound" }, method = RequestMethod.GET)
	public String updateCompound(Model model, HttpServletRequest request) {

		
		return "update-compound";
	}
	@RequestMapping(value = { "/newCompound" }, method = RequestMethod.GET)
	public String newCompound(Model model, HttpServletRequest request) {
		
		
		return "new-compound";
	}
	
	
	
	
	
}
