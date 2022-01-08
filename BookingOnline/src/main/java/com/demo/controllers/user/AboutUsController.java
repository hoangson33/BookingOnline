package com.demo.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.services.AccountService;

@Controller
@RequestMapping(value = "aboutus")
public class AboutUsController {
	@Autowired
	private AccountService accountService;
	
	@RequestMapping(value = {"","aboutus"}, method = RequestMethod.GET)
	public String index() {
		
		return "users/aboutus/index";
	}
	@RequestMapping(value ="welcome", method = RequestMethod.GET)
	public String index2(Authentication authentication , ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/aboutus/index";
	}
}
