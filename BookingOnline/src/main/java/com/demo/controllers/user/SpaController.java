package com.demo.controllers.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "spa")
public class SpaController {
	@RequestMapping(value = {"","spa"}, method = RequestMethod.GET)
	public String index() {
		
		return "users/spa/index";
	}
}
