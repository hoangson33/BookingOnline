package com.demo.controllers.user;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
import com.demo.services.AccountService;
import com.demo.services.RoleService;
import com.demo.services.RoomService;



@Controller
@RequestMapping(value = "enterprise")
public class EnterpriseController implements ServletContextAware {
	
	private ServletContext servletContext;
	
	@Autowired
	private RoleService roleService;
	

	
	@Autowired
	private RoomService roomService;

	@Autowired
	private AccountService accountService;
	
	
	@RequestMapping(value = {"","addroom"}, method = RequestMethod.GET)
	public String addroom() {
		
		return "users/enterprise/addroom";
	}
	
	@RequestMapping(value = "profile", method = RequestMethod.GET)
	public String profile(Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/enterprise/profile";
	}
	
	
	@RequestMapping(value =  "editAcc/{id}", method = RequestMethod.GET)
	public String editAcc(@PathVariable("id") String id,ModelMap modelMap) {
		modelMap.put("account", accountService.findIdAcc(id));
		modelMap.addAttribute("avatar", accountService.findAvatar(id));
		String avatar = accountService.findAvatar(id);
		System.out.println("avatar  : " + avatar);
		return "users/enterprise/profile_edit";
	}
	
	@RequestMapping(value = "editAcc", method = RequestMethod.POST )
	public String editAcc(@ModelAttribute("account") Account account,
			@RequestParam(value = "file") MultipartFile file , RedirectAttributes redirectAttributes,Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		
		
		Account accountOld = accountService.findIdAcc(account.getIdAcc());
		
		
		account.setDatecreated(new Date());
		account.setGender(accountOld.getGender());
		account.setPassword(accountOld.getPassword());
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
		return "users/home/index";
	}
	
	@RequestMapping(value = {"","welcome"}, method = RequestMethod.GET)
	public String welcome(Authentication authentication , ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		

		return "users/home/index";
	}
	
	
	
	
	@RequestMapping(value = "addRoom", method = RequestMethod.GET)
	public String addRoom(ModelMap modelMap,Authentication authentication) {
		InfoRoom infoRoom = new InfoRoom();
		String name = authentication.getName();
		
		Account account = accountService.findByUsername2(name);
		modelMap.put("idAcc", account.getIdAcc());
		modelMap.put("infoRoom", infoRoom);
		return "users/enterprise/addroom";
	}

	
	@RequestMapping(value = "addRoom" , method = RequestMethod.POST)
	public String addRoom(@ModelAttribute("infoRoom") InfoRoom infoRoom, @RequestParam(value = "file") MultipartFile file, Authentication authentication, RedirectAttributes redirectAttributes ) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
		String CheckIn =  String.valueOf(infoRoom.getCheckIn()) ;
		String CheckOut =  String.valueOf(infoRoom.getCheckOut()) ;
		try {
			
			
			String fileName = UUID.randomUUID().toString().replace("-", "");
			String fileNameUpload = UploadHelper.upload(servletContext, file);
			redirectAttributes.addFlashAttribute("fileName", fileNameUpload);
			if(fileNameUpload != null) {
				infoRoom.setImgRoom(fileNameUpload);
			}
			infoRoom.setCreated(new Date());
			
			infoRoom.setCheckIn(simpleDateFormat.parse(CheckIn)) ;
			infoRoom.setCheckOut(simpleDateFormat.parse(CheckOut)) ;
			String name = authentication.getName();
			
			Account account = accountService.findByUsername2(name);	
			System.out.println("********************* : " +infoRoom.getAccount().getIdAcc());
			
			
			
			infoRoom.setStatus(false);
			
			
			
			
			
//			else {
//				
//				for(MultipartFile file :files) {
//					System.out.println("file name : " + file.getOriginalFilename());
//					System.out.println("file type : " + file.getContentType());
//					System.out.println("file size : " + file.getSize());
//					String fileNameUploads = UploadHelper.upload(servletContext, file);
//					imageRoom.setImage(fileNameUploads);
//					imageRoomService.save(imageRoom);
//				}
//			}
		} catch (ParseException e) {
			System.err.println(e.getMessage());
		}
		
				roomService.save(infoRoom);
				return "redirect:/enterprise/addRoom";
		
		
	}
	
	
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
