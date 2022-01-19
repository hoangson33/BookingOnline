package com.demo.controllers.user;

import java.lang.ProcessHandle.Info;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.models.InfoRoom;
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
		modelMap.put("accountEnters", accountService.findAllAccEnterPrise());
		return "users/home/index";
	}
	
	@RequestMapping(value = "welcomeCustomer", method = RequestMethod.GET)
	public String welcomeCustomer(Authentication authentication , ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		modelMap.put("accountEnters", accountService.findAllAccEnterPrise());
		modelMap.put("roomlists", roomService.findAllRoom());
		return "users/home/indexCustomer";
	}
	
	
	@RequestMapping(value = {"","home2"}, method = RequestMethod.GET)
	public String index2() {
		
		return "users/home/index2";
	}
	
	@RequestMapping(value = "search/{city}/{checkIn}/{checkOut}/{guestChildren}/{guestAdult}", method = RequestMethod.GET)
	public String search(ModelMap modelMap,@RequestParam("city") String city,@RequestParam("checkIn") String checkIn , @RequestParam("checkOut") String checkOut
			,@RequestParam("guestChildren") int guestChildren,@RequestParam("guestAdult") int guestAdult ) {
		
		modelMap.put("city", city);
		modelMap.put("checkIn", checkIn);
		modelMap.put("checkOut", checkOut);
		modelMap.put("guestChildren", guestChildren);
		modelMap.put("guestAdult", guestAdult);
		if(roomService.search(city,checkIn, checkOut, guestChildren,guestAdult) == null) {
			modelMap.put("emptyRoom", "There are currently no rooms that match your request, please refer to the popular rooms below....");
		}
		modelMap.put("roomlists", roomService.popupalRoom(city));
		modelMap.put("roomSearchs", roomService.search(city,checkIn, checkOut, guestChildren,guestAdult)) ;
		
		return "users/room/room_list";
	}
}
