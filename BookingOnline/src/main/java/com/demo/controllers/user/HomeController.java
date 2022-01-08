package com.demo.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.services.AccountService;
import com.demo.services.RoomService;

@Controller
@RequestMapping(value = {"","home"})
public class HomeController {
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private RoomService roomService;
	
	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
	

		
		
		modelMap.put("roomlists", roomService.findAllRoom());
		return "users/home/index";
	}
	
	@RequestMapping(value = "welcome", method = RequestMethod.GET)
	public String welcome(Authentication authentication , ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		modelMap.put("roomlists", roomService.findAllRoom());
		return "users/home/index";
	}
	
	
	@RequestMapping(value = {"","home2"}, method = RequestMethod.GET)
	public String index2() {
		
		return "users/home/index2";
	}
}
