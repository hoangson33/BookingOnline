package com.demo.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.services.RoomService;

@Controller
@RequestMapping(value = "roomlist")
public class RoomListController {
	
	
	@RequestMapping(value = {"","roomlist"}, method = RequestMethod.GET)
	public String index() {
		
		return "users/room/room_list";
	}
}
