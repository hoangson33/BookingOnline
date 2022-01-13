package com.demo.controllers.user;


import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "default")
public class DefaultUrlController {
	
	@RequestMapping(value = "checkRole", method = RequestMethod.GET)
	public String defaultAfterLogin(HttpServletRequest request) {
		if(request.isUserInRole("ROLE_CUSTOMER")) {
			return "redirect:/home/welcomeCustomer";
		}
		return "redirect:/home/welcome";
		
	}
}
