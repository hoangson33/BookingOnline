package com.demo.controllers.user;

import java.lang.ProcessHandle.Info;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
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

import com.demo.email.SmtpMailSender;
import com.demo.helpers.UploadHelper;
import com.demo.models.Account;
import com.demo.models.InfoRoom;
import com.demo.models.Roles;
import com.demo.services.AccountService;
import com.demo.services.RoleService;
import com.demo.services.RoomService;
import com.demo.validators.AccountValidator;
import com.demo.validators.InfoRoomValidator;
import com.demo.validators.RolesValidator;

@Controller
@RequestMapping(value = {"","admin"})
public class AdminController implements ServletContextAware {
	@Autowired
	private RolesValidator rolesValidator;
	
	
	@Autowired
	private AccountValidator accountValidator;
	
	private ServletContext servletContext;
	
	@Autowired
	private SmtpMailSender smtpMailSender;
	
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private AccountService accountService;
	
	
	@Autowired
	private InfoRoomValidator infoRoomValidator;

	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap, Authentication authentication) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		
		return "admin/index";
	}
	
	@RequestMapping(value = {"","room-list"}, method = RequestMethod.GET)
	public String roomList(ModelMap modelMap, Authentication authentication) {
		modelMap.put("roomlists", roomService.findAllRoom());
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		
		return "admin/room_list";
	}
	
	@RequestMapping(value = {"","room-list-approval"}, method = RequestMethod.GET)
	public String roomListApproval(ModelMap modelMap, Authentication authentication) {
		
		
		modelMap.put("roomlists", roomService.findRoomApproval());
		
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		return "admin/room_list_approval";
	}
	
	@RequestMapping(value = {"","account-management"}, method = RequestMethod.GET)
	public String accountManagement(ModelMap modelMap,Authentication authentication) {
		
		modelMap.put("accounts", accountService.findAllAccount());
		
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		
		return "admin/account_management";
	}
	
	@RequestMapping(value = {"","role-management"}, method = RequestMethod.GET)
	public String roleManagement(ModelMap modelMap,Authentication authentication) {
		modelMap.put("roles", roleService.findAllRole());
		
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		return "admin/role_management";
	}
	

	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(ModelMap modelMap,Authentication authentication) {
		Roles role = new Roles();
		modelMap.put("role", role);
		
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		return "admin/role_add";
	}
	

	
	@RequestMapping(value = "add" , method = RequestMethod.POST)
	public String add(@ModelAttribute("role")@Valid Roles role, BindingResult bindingResult) {
		rolesValidator.validate(role, bindingResult);
		if(bindingResult.hasErrors()) {
			return "admin/role_add";
		}else {
			System.out.println("asdsad : " + role.getNameRole());
			roleService.save(role);
			return "redirect:/admin/role-management";
		}
		
	}
	
	
	@RequestMapping(value = "addAcc", method = RequestMethod.GET)
	public String addAcc(ModelMap modelMap,Authentication authentication) {
		Account account = new Account();
		modelMap.put("account", account);
		
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		return "admin/account_add";
	}

	
	@RequestMapping(value = "addAcc" , method = RequestMethod.POST)
	public String addAcc(@ModelAttribute("account")@Valid Account account, BindingResult bindingResult,@RequestParam("phone") int phone, ModelMap modelMap) {
		accountValidator.validate(account, bindingResult);
		if(bindingResult.hasErrors()) {
			return "admin/account_add";
		}
		if(phone < 0) {
			modelMap.put("errorphone", "You cannot enter negative numbers!?");
			return "admin/account_add";
		}
			String idRole = roleService.findRoleByNameRole(account.getIdRole());
			int idRole2 = Integer.parseInt(roleService.findRoleByNameRole(account.getIdRole()));
			account.setIdAcc(account.getIdRole() + account.getName().replace(" ", ""));
			account.setIdRole(idRole);
			account.setStatus(true);
			account.getRoleses().add(roleService.find(idRole2));
			account.setDatecreated(new Date());
			String hash  = new BCryptPasswordEncoder().encode(account.getPassword());
			System.out.println(hash);
			account.setPassword(hash);
			account.setAvatar("anhmacdinh.png");
		
			accountService.save(account);
			return "redirect:/admin/account-management";
		
		
	}
	
	
	@RequestMapping(value =  "edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id,ModelMap modelMap,Authentication authentication) {
		modelMap.put("role", roleService.find(id));
		
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		return "admin/role_edit";
	}
	
	@RequestMapping(value = "edit", method = RequestMethod.POST )
	public String edit(@ModelAttribute("role")@Valid Roles role , BindingResult bindingResult) {
		rolesValidator.validate(role, bindingResult);
		if(bindingResult.hasErrors()) {
			return "admin/role_edit";
		}
		roleService.save(role);
		return "redirect:/admin/role-management";
	}
	
	
	
	@RequestMapping(value =  "editAcc/{id}", method = RequestMethod.GET)
	public String editAcc(@PathVariable("id") String id,ModelMap modelMap,Authentication authentication) {
		modelMap.put("account", accountService.findIdAcc(id));
		modelMap.addAttribute("avatar", accountService.findAvatar(id));
		String avatar = accountService.findAvatar(id);
		System.out.println("avatar  : " + avatar);
		
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		return "admin/account_edit";
	}
	
	@RequestMapping(value = "editAcc", method = RequestMethod.POST )
	public String editAcc(@ModelAttribute("account")@Valid Account account,BindingResult bindingResult,
			@RequestParam(value = "file") MultipartFile file , RedirectAttributes redirectAttributes) {
		accountValidator.validate(account, bindingResult);
		if(bindingResult.hasErrors()) {
			return "admin/account_edit";
		}
		Account accountOld = accountService.findIdAcc(account.getIdAcc());
		
		
//		account.setUsername (accountOld.getUsername());
		
		account.setDatecreated(new Date());
		
//		account.setPassword(accountOld.getPassword());
		String idRole2  = accountOld.getIdRole();
		System.out.println("idRole2 :  " + idRole2);
		account.setIdRole(idRole2);
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
		return "redirect:/admin/account-management";
	}
	
	@RequestMapping(value =  "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id) {
		roleService.delete(id);
		return "redirect:/admin/role-management";
	}
	
	
	@RequestMapping(value =  "deleteAcc/{id}", method = RequestMethod.GET)
	public String deleteAcc(@PathVariable("id") String id) {
		accountService.deleteById(id);
		return "redirect:/admin/account-management";
	}
	
	@RequestMapping(value =  "deleteRoom/{id}", method = RequestMethod.GET)
	public String deleteRoom(@PathVariable("id") int id, String desc) throws MessagingException {
		String idAcc = roomService.findAccId(id);
		String email = accountService.findEmail(idAcc);
		InfoRoom infoRoom = roomService.roomInfoByIdRoom(id);
		String body = "<p>We would like to inform you that your request to register your business on the 'BookingHotel' website has been rejected for the following reasons: </p>" + desc +"<br>";
		body += "Infomation of room : " + "<br>" + "It's " + infoRoom.getRoomCategory() + " room" +"<br>";
		body += "Quantity of guests adult : " + infoRoom.getGuestAdult() + "Quantity of guests children : " + infoRoom.getGuestChildren()  + "<br>" + "Price : " + infoRoom.getPrice() + "<br>";
		body += "Detail address : " + infoRoom.getAccount().getLocationDetail() + "<br>";
		body += "Time check in: " + infoRoom.getCheckIn() + ", Time check out: " + infoRoom.getCheckOut() + "<br>";
		body += "Is required to register on : " + infoRoom.getCreated() + "<br>" + "Thank you" + "<br>" +"The BookingHotel Team";
		smtpMailSender.send(email, "Notice from 'BookingHotel'", body);
		roomService.delete(id);
		
		return "redirect:/admin/room-list-approval";
	}
	
	
	
	
	
	
	@RequestMapping(value =  "edit-room/{idRoom}", method = RequestMethod.GET)
	public String editRoom(@PathVariable("idRoom") int idRoom,ModelMap modelMap,Authentication authentication) {
		
		modelMap.put("infoRoom", roomService.roomInfoByIdRoom(idRoom));
		modelMap.put("idRoom", idRoom);

		return "admin/room_edit";
	}
	
	@RequestMapping(value = "edit-room", method = RequestMethod.POST )
	public String editRoom(@ModelAttribute("infoRoom")@Valid InfoRoom infoRoom, BindingResult bindingResult
			,@RequestParam("guestChildren") int guestChildren,@RequestParam("guestAdult") int guestAdult
			,@RequestParam("price") double price, ModelMap modelMap,@RequestParam("salePrice") double salePrice) {
		infoRoomValidator.validate(infoRoom, bindingResult);
		if(bindingResult.hasErrors()) {
			return "admin/room_edit";
		}
		if(guestChildren < 0) {
			modelMap.put("errorguestChildren", "You cannot enter negative numbers!?");
			return "admin/room_edit";
		}else if(guestAdult < 0) {
			modelMap.put("errorguestAdult", "You cannot enter negative numbers!?");
			return "admin/room_edit";
		}else if(price < 0) {
			modelMap.put("errorprice", "You cannot enter negative numbers!?");
			return "admin/room_edit";
		}else if(salePrice < 0) {
			modelMap.put("errorsalePrice", "You cannot enter negative numbers!?");
			return "admin/room_edit";
		}
			
		InfoRoom infoRoomOld = roomService.roomInfoByIdRoom(infoRoom.getIdRoom());
		infoRoom.setImgRoom(infoRoomOld.getImgRoom());
		infoRoom.setExtraImg1(infoRoomOld.getExtraImg1());
		infoRoom.setExtraImg2(infoRoomOld.getExtraImg2());
		infoRoom.setExtraImg3(infoRoomOld.getExtraImg3());
		infoRoom.setCreated(infoRoom.getCreated());
		infoRoom.setStatus(true);
		roomService.save(infoRoom);
		return "redirect:/admin/room-list";
	}

	
	@RequestMapping(value = {"","room-edit"}, method = RequestMethod.GET)
	public String roomEdit(ModelMap modelMap) {
		return "admin/room_edit";
	}
	
	
	
	
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
