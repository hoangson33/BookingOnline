package com.demo.controllers.user;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.services.AccountService;



@Controller
@RequestMapping(value = "enterprise")
public class EnterpriseController {

	@Autowired
	private AccountService accountService;
	
	
	@RequestMapping(value = {"","enterprise"}, method = RequestMethod.GET)
	public String index() {
		
		return "users/enterprise/addroom";
	}
	
	@RequestMapping(value = "updateprofile", method = RequestMethod.GET)
	public String Updateprofile(Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		

		modelMap.put("accounts", accountService.findAllAccount());
		return "users/enterprise/updateprofile";
	}
}
