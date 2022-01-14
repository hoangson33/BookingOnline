package com.demo.controllers.user;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.helpers.UploadHelper;
import com.demo.models.Account;
import com.demo.models.InfoRoom;
import com.demo.models.Roles;
import com.demo.services.AccountService;
import com.demo.services.HighlightService;
import com.demo.services.RoleService;
import com.demo.services.RoomService;



@Controller
@RequestMapping(value = "enterprise")
public class EnterpriseController implements ServletContextAware {
	
	private ServletContext servletContext;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private HighlightService highlightService;
	
	@Autowired
	private RoomService roomService;

	@Autowired
	private AccountService accountService;
	

	
	

	
	@RequestMapping(value = "profile", method = RequestMethod.GET)
	public String profile(Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		

		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/enterprise/profile";
	}
	
	
	@RequestMapping(value =  "editAcc/{id}", method = RequestMethod.GET)
	public String editAcc(@PathVariable("id") String id,ModelMap modelMap,Authentication authentication) {
		modelMap.put("account", accountService.findIdAcc(id));
		modelMap.addAttribute("avatar", accountService.findAvatar(id));
		String avatar = accountService.findAvatar(id);
		System.out.println("avatar  : " + avatar);
		
		return "users/enterprise/profile_edit";
	}
	
	@RequestMapping(value = "editAcc", method = RequestMethod.POST )
	public String editAcc(@ModelAttribute("account")@Valid Account account, BindingResult bindingResult,
			@RequestParam(value = "file") MultipartFile file , RedirectAttributes redirectAttributes,Authentication authentication,ModelMap modelMap) {
		if(bindingResult.hasErrors()) {
		return "users/enterprise/profile_edit";
	}else {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		
		
		Account accountOld = accountService.findIdAcc(account.getIdAcc());
		
		account.setLocationDetail(accountOld.getLocationDetail());
		account.setDatecreated(new Date());
		account.setGender(accountOld.getGender());
		account.setPassword(accountOld.getPassword());
		account.setLocation(accountOld.getLocation());
		String idRole =  account.getIdRole();
		account.setIdRole(idRole);
		account.setStatus(true);
		
		account.getRoleses().add(roleService.find(Integer.parseInt(account.getIdRole())));
		
		
		String fileName = UUID.randomUUID().toString().replace("-", "");
		String fileNameUpload = UploadHelper.upload(servletContext, file);
		redirectAttributes.addFlashAttribute("fileName", fileNameUpload);
		if(fileNameUpload != null) {
			account.setAvatar(fileNameUpload);
		}else {
			account.setAvatar(accountOld.getAvatar());
		}
		accountService.save(account);
		return "redirect:/home/welcome";
	}
	}
	
	@RequestMapping(value = {"","welcome"}, method = RequestMethod.GET)
	public String welcome(Authentication authentication , ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accounts", accountService.findByUsername(name));

		return "users/home/index";
	}
	
	@RequestMapping(value = "room-list", method = RequestMethod.GET)
	public String roomList(Authentication authentication , ModelMap modelMap) {
		String name = authentication.getName();
		Account account =  accountService.findByUsername2(name);
		
		
		modelMap.put("roomlistTrue",  roomService.findRoomTrueOfAcc(account.getIdAcc()));
		
		modelMap.put("roomlistFalse",  roomService.findRoomFalseOfAcc(account.getIdAcc()));
		System.out.println("username " + authentication.getName());
		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/enterprise/room_list";
	}
	
	
	
	
	@RequestMapping(value = "addRoom", method = RequestMethod.GET)
	public String addRoom(ModelMap modelMap,Authentication authentication) {
		InfoRoom infoRoom = new InfoRoom();
		String name = authentication.getName();
		Account account = accountService.findByUsername2(name);
		modelMap.put("idAcc", account.getIdAcc());
		modelMap.put("infoRoom", infoRoom);
		modelMap.put("highlights", highlightService.findAll());
		
		System.out.println("username " + authentication.getName());
		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/enterprise/addroom";
	}
	
	
	@RequestMapping(value =  "edit-room/{idRoom}", method = RequestMethod.GET)
	public String editRoom(@PathVariable("idRoom") int idRoom,ModelMap modelMap
			,Authentication authentication) {
		
			String name = authentication.getName();
			InfoRoom infoRoom = roomService.roomInfoByIdRoom(idRoom);
			Account account = accountService.findByUsername2(name);
			
			
			List<String> convertedHightlight = Arrays.asList(infoRoom.getHighlightRoom().split(",", -1));
			modelMap.put("highlights", convertedHightlight);
			modelMap.put("idAcc", account.getIdAcc());
			
			modelMap.put("highlightS", highlightService.findAll());
			
			
			
			modelMap.put("imgRoom", infoRoom.getImgRoom());
			
			
		modelMap.put("roomlist", roomService.roomInfoByIdRoom(idRoom));
		return "users/enterprise/room_edit";
	}
	
	@RequestMapping(value = "edit-room", method = RequestMethod.POST )
	public String editRoom(@ModelAttribute("roomlist") InfoRoom infoRoom,
			@RequestParam(value = "mainImage") MultipartFile mainImageFile,@RequestParam(value = "extraImage") MultipartFile[] extraImageFile
			,RedirectAttributes redirectAttributes, @RequestParam(value = "idRoom") int idRoom) {
		InfoRoom infoRoomOld = roomService.roomInfoByIdRoom(idRoom);
		
		String mainNameUpload = UploadHelper.upload2(servletContext, mainImageFile);
		if(mainNameUpload != null) {
			infoRoom.setImgRoom(mainNameUpload);
		}else {
			infoRoom.setImgRoom(infoRoomOld.getImgRoom());
		}
		
		
		int count = 0;
		

			for(MultipartFile extraImageName : extraImageFile) {
				String extraNameUpload = UploadHelper.upload2(servletContext, extraImageName);
				if(count == 0) {
					infoRoom.setExtraImg1(extraNameUpload);
				}
				if(count == 1) {
					infoRoom.setExtraImg2(extraNameUpload);
				}
				if(count == 2) {
					infoRoom.setExtraImg3(extraNameUpload);
				}
				count ++;
			}
			
			if(infoRoom.getExtraImg1() == null && infoRoom.getExtraImg2() == null && infoRoom.getExtraImg3() == null) 
			{ 
			infoRoom.setExtraImg1(infoRoomOld.getExtraImg1());
			infoRoom.setExtraImg2(infoRoomOld.getExtraImg2());
			infoRoom.setExtraImg3(infoRoomOld.getExtraImg3());
			}
		
		
		
		infoRoom.setCreated(new Date());
		infoRoom.setStatus(false);
		roomService.save(infoRoom);
		return "redirect:/enterprise/room-list";
	}

	
	@RequestMapping(value = "addRoom" , method = RequestMethod.POST)
	public String addRoom(@ModelAttribute("infoRoom") InfoRoom infoRoom, @RequestParam(value = "mainImage") MultipartFile mainImageFile, Authentication authentication, 
			RedirectAttributes redirectAttributes,@RequestParam(value = "extraImage") MultipartFile[] extraImageFile) {
	
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
		String CheckIn =  String.valueOf(infoRoom.getCheckIn()) ;
		String CheckOut =  String.valueOf(infoRoom.getCheckOut()) ;
		try {
			
			
			
			String mainNameUpload = UploadHelper.upload2(servletContext, mainImageFile);
			infoRoom.setImgRoom(mainNameUpload);
			
			
			int count = 0;
			for(MultipartFile extraImageName : extraImageFile) {
				String extraNameUpload = UploadHelper.upload2(servletContext, extraImageName);
				if(count == 0) {
					infoRoom.setExtraImg1(extraNameUpload);
				}
				if(count == 1) {
					infoRoom.setExtraImg2(extraNameUpload);
				}
				if(count == 2) {
					infoRoom.setExtraImg3(extraNameUpload);
				}
				count ++;
			}
			
			infoRoom.setCreated(new Date());
			infoRoom.setCheckIn(simpleDateFormat.parse(CheckIn)) ;
			infoRoom.setCheckOut(simpleDateFormat.parse(CheckOut)) ;
			infoRoom.setStatus(false);
		} catch (ParseException e) {
			System.err.println(e.getMessage());
		}
		
				roomService.save(infoRoom);
				return "redirect:/enterprise/addRoom";
		
		
	}
	
	
	
	
	
	@RequestMapping(value =  "room-list-of/{idAcc}", method = RequestMethod.GET)
	public String roomListOf(@PathVariable("idAcc") String idAcc,ModelMap modelMap
			,Authentication authentication) {
		
			
//			InfoRoom infoRoom = roomService.roomInfoByIdRoom(idRoom);
//			
//			
//			List<String> convertedHightlight = Arrays.asList(infoRoom.getHighlightRoom().split(",", -1));
//			modelMap.put("highlights", convertedHightlight);
		
			Account account =accountService.findIdAcc(idAcc);
			modelMap.put("nameHotel", account.getName());
			
			modelMap.put("highlightS", highlightService.findAll());
			
			
			modelMap.put("roomlists", roomService.roomInfoByIdAcc(idAcc));
		return "users/enterprise/room_list_of";
	}
	
	@RequestMapping(value = "changepass", method = RequestMethod.GET)
	public String changepass(Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/enterprise/changepass";
	}

	@RequestMapping(value = "editpass", method = RequestMethod.POST)
	public String editpass(Authentication authentication,ModelMap modelMap, @RequestParam("passwordOld") String passwordOld, 
			 @RequestParam("passwordNew") String passwordNew ,@RequestParam("passwordNewMatch") String passwordNewMatch) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		Account account = accountService.findByUsername2(name); /// username truyền vào
		
		
//		String hashs  = new BCryptPasswordEncoder().encode(passwords);
//		System.out.println("passwords hien tai ms nhap :" + hashs); // passwords mới nhập  
		
		String passs  = accountService.findPass(name);
		System.out.println("password databse hien tai  :" + passs); // password dưới database 
		
		System.out.println("password hien tai trong database :" + account.getPassword());
		
		System.out.println("passwords hien tai ms nhap :" + passwordOld); // passwords mới nhập  
		System.out.println("password  :" + passwordNewMatch); 
		System.out.println("passwordd  :" + passwordNew); 

		
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		boolean result = passwordEncoder.matches(passwordOld, account.getPassword());
		System.out.println("match  : " + result); 
		
		
		if(result != false &&  passwordNew.equalsIgnoreCase(passwordNewMatch)) {
			account.getIdAcc();
			account.getUsername();
			String hash  = new BCryptPasswordEncoder().encode(passwordNewMatch);
			account.setPassword(hash);
			System.out.println("hash :" + hash);
			account.getEmail();
			account.getName();
			account.getGender();
			account.getLocation();
			account.getPhone();
			account.isStatus();
			account.getAvatar();
			account.getDatecreated();
			account.getIdRole();
			accountService.save(account);
			modelMap.put("successfully", "You have successfully changed your password!"); 
			return "users/customer/changepass";
		}else {
		//	return "forgotpass/accessDenied";
			modelMap.put("error", "You entered the wrong password!"); 
			return "users/enterprise/changepass";
		}
			
	}
	
	
	@RequestMapping(value =  "view-room/{idRoom}", method = RequestMethod.GET)
	public String viewRoom(@PathVariable("idRoom") int idRoom,ModelMap modelMap
			,Authentication authentication) {
		
			String name = authentication.getName();
			InfoRoom infoRoom = roomService.roomInfoByIdRoom(idRoom);
			Account account = accountService.findByUsername2(name);
			
			
			List<String> convertedHightlight = Arrays.asList(infoRoom.getHighlightRoom().split(",", -1));
			modelMap.put("highlights", convertedHightlight);
			modelMap.put("idAcc", account.getIdAcc());
			System.out.println("" + convertedHightlight);
			
			
			modelMap.put("imgRoom", infoRoom.getImgRoom());
			
			
		modelMap.put("roomlist", roomService.roomInfoByIdRoom(idRoom));
		return "users/enterprise/view_room";
	}

	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
