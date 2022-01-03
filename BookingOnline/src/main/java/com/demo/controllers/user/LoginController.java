package com.demo.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.services.RoomService;

@Controller
@RequestMapping(value = {"","login"})
public class LoginController {


	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		return "login/index";
	}
	
	@RequestMapping(value = {"","welcome"}, method = RequestMethod.GET)
	public String index() {
		return "users/home/index";
	}
}
