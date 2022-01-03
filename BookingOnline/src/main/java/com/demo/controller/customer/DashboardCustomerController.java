package com.demo.controller.customer;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller 
@RequestMapping(value = "customer")
public class DashboardCustomerController {
	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(Authentication authentication) {
		System.out.println("username - Customer" + authentication.getName());
		return "users/customer/index";
	}
}
