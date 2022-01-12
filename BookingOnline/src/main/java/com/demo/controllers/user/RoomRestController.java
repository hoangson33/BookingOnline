package com.demo.controllers.user;

import java.util.List;

import org.apache.tomcat.util.http.MimeHeaders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.demo.models.InfoRoom;
import com.demo.services.RoomService;

@RestController
@RequestMapping("room/ajax")
public class RoomRestController {
	
	@Autowired
	private RoomService roomService;
	
	@RequestMapping(value = "getIdRoom", method = RequestMethod.GET, produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public String getIdRoom(@RequestParam("id") int id ,ModelMap modelMap){
		System.out.print("id ROom :  " + id);
		modelMap.put("infoRoomSelects", roomService.roomInfoByIdRoom(id));
		return "users/enterprise/room_list_of";
		
	}
	
	
}
