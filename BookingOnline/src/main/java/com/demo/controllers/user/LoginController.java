package com.demo.controllers.user;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.models.Account;
import com.demo.services.AccountService;



@Controller
@RequestMapping(value = {"","login"})
public class LoginController {



	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(@RequestParam(value = "error", required = false) String eroor,
			@RequestParam(value = "logout", required = false) String logout,
			ModelMap modelMap) {
		
		if(eroor != null) {
			modelMap.put("msgs", "Incorrect account or password ?"); 
		}
		if(logout != null) {
			modelMap.put("msg", "Logout Succeccfully");
		}

		return "login/index";
	}
	
	@RequestMapping(value = {"","welcome"}, method = RequestMethod.GET)
	public String welcome(Authentication authentication , ModelMap modelMap) {
		System.out.println("username " + authentication.getName());

		return "users/home/index";
	}
	
	@RequestMapping(value = {"","accessDenied"}, method = RequestMethod.GET)
	public String accessDenied() {
	
		return "login/accessDenied";
	}
}
