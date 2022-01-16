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
@RequestMapping(value = "roomlist")
public class RoomListController {
	@Autowired
	private AccountService accountService;
	
	@RequestMapping(value = {"","roomlist"}, method = RequestMethod.GET)
	public String index() {
		
		return "users/room/room_list";
	}
	
	@RequestMapping(value = "welcome", method = RequestMethod.GET)
	public String welcome(Authentication authentication , ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		
		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/room/room_list";
	}
}
