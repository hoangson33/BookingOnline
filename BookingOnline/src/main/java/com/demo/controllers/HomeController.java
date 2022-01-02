package com.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.services.RoomService;

@Controller
@RequestMapping(value = {"","home"})
public class HomeController {
	
	@Autowired
	private RoomService roomService;
	
	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("roomlists", roomService.findAllRoom());
		return "users/home/index";
	}
	
	@RequestMapping(value = {"","home2"}, method = RequestMethod.GET)
	public String index2() {
		
		return "users/home/index2";
	}
}
