package com.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "roomdetails")
public class RoomDetailsController {
	@RequestMapping(value = {"","roomdetails"}, method = RequestMethod.GET)
	public String index() {
		
		return "users/room/room_details";
	}
}
