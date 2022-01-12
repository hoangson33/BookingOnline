package com.demo.controllers.user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
	
	
	@RequestMapping(value = {"","home2"}, method = RequestMethod.GET)
	public String index2() {
		
		return "users/home/index2";
	}
	
	@RequestMapping(value = "search/{checkIn}/{checkOut}/{guestChildren}", method = RequestMethod.GET)
	public String search(ModelMap modelMap,@RequestParam("checkIn") Date checkIn , @RequestParam("checkOut") Date checkOut
			,@RequestParam("guestChildren") int guestChildren ) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
		String checkin = simpleDateFormat.format(checkIn); 
		String checkout = simpleDateFormat.format(checkOut); 
		System.out.println("checkIn : " + checkin);
		System.out.println("checkOut : " + checkout);
		System.out.println("guestChildren : " + guestChildren);
		List<InfoRoom> listInfoRooms = roomService.search(checkIn, checkOut, guestChildren);
	
		return "users/home/index";
	}
}
