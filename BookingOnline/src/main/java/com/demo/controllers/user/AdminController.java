package com.demo.controllers.user;

import java.util.Date;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.servlet.ServletContext;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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

@Controller
@RequestMapping(value = {"","admin"})
public class AdminController implements ServletContextAware {
	
	private ServletContext servletContext;
	
	@Autowired
	private SmtpMailSender smtpMailSender;
	
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private AccountService accountService;


	@RequestMapping(value = {"","index"}, method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		return "admin/index";
	}
	
	@RequestMapping(value = {"","room-list"}, method = RequestMethod.GET)
	public String roomList(ModelMap modelMap) {
		modelMap.put("roomlists", roomService.findAllRoom());
		return "admin/room_list";
	}
	
	@RequestMapping(value = {"","room-list-approval"}, method = RequestMethod.GET)
	public String roomListApproval(ModelMap modelMap) {
		modelMap.put("roomlists", roomService.findRoomApproval());
		return "admin/room_list_approval";
	}
	
	@RequestMapping(value = {"","account-management"}, method = RequestMethod.GET)
	public String accountManagement(ModelMap modelMap) {
		
		modelMap.put("accounts", accountService.findAllAccount());
		
		return "admin/account_management";
	}
	
	@RequestMapping(value = {"","role-management"}, method = RequestMethod.GET)
	public String roleManagement(ModelMap modelMap) {
		modelMap.put("roles", roleService.findAllRole());
		return "admin/role_management";
	}
	
	@RequestMapping(value = {"","room-edit"}, method = RequestMethod.GET)
	public String roomEdit(ModelMap modelMap) {
		return "admin/room_edit";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(ModelMap modelMap) {
		Roles role = new Roles();
		modelMap.put("role", role);
		return "admin/role_add";
	}
	

	
	@RequestMapping(value = "add" , method = RequestMethod.POST)
	public String add(@ModelAttribute("role") Roles role) {
		System.out.println("asdsad : " + role.getNameRole());
		roleService.save(role);
		return "redirect:/admin/role-management";
	}
	
	
	@RequestMapping(value = "addAcc", method = RequestMethod.GET)
	public String addAcc(ModelMap modelMap) {
		Account account = new Account();
		modelMap.put("account", account);
		return "admin/account_add";
	}

	
	@RequestMapping(value = "addAcc" , method = RequestMethod.POST)
	public String addAcc(@ModelAttribute("account") Account account) {
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
	public String edit(@PathVariable("id") int id,ModelMap modelMap) {
		modelMap.put("role", roleService.find(id));
		return "admin/role_edit";
	}
	
	@RequestMapping(value = "edit", method = RequestMethod.POST )
	public String edit(@ModelAttribute("role") Roles role) {
		roleService.save(role);
		return "redirect:/admin/role-management";
	}
	
	
	
	@RequestMapping(value =  "editAcc/{id}", method = RequestMethod.GET)
	public String editAcc(@PathVariable("id") String id,ModelMap modelMap) {
		modelMap.put("account", accountService.findIdAcc(id));
		modelMap.addAttribute("avatar", accountService.findAvatar(id));
		String avatar = accountService.findAvatar(id);
		System.out.println("avatar  : " + avatar);
		return "admin/account_edit";
	}
	
	@RequestMapping(value = "editAcc", method = RequestMethod.POST )
	public String editAcc(@ModelAttribute("account") Account account,
			@RequestParam(value = "file") MultipartFile file , RedirectAttributes redirectAttributes) {
		
		account.setDatecreated(new Date());
		String hash  = new BCryptPasswordEncoder().encode(account.getPassword());
		System.out.println(hash);
		account.setPassword(hash);
		String idRole =  account.getIdRole();
		account.setIdRole(idRole);
		account.setStatus(true);
		
		
		String fileName = UUID.randomUUID().toString().replace("-", "");
		String fileNameUpload = UploadHelper.upload(servletContext, file);
		redirectAttributes.addFlashAttribute("fileName", fileNameUpload);
		if(fileNameUpload != null) {
			account.setAvatar(fileNameUpload);
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
		InfoRoom infoRoom = roomService.roomInfo(id);
		String body = "<p>We would like to inform you that your request to register your business on the 'BookingHotel' website has been rejected for the following reasons: </p>" + desc +"<br>";
		body += "Infomation of room : " + "<br>" + "It's " + infoRoom.getRoomCategory() + " room" +"<br>";
		body += "Quantity of room : " + infoRoom.getQuantityRoom() + "<br>";
		body += "Quantity of guests : " + infoRoom.getQuantityGuest() + "<br>" + "Price : " + infoRoom.getPrice() + "<br>";
		body += "Detail address : " + infoRoom.getLocationDetails() + "<br>";
		body += "Time check in: " + infoRoom.getCheckIn() + ", Time check out: " + infoRoom.getCheckOut() + "<br>";
		body += "Is required to register on : " + infoRoom.getCreated() + "<br>" + "Thank you" + "<br>" +"The BookingHotel Team";
		smtpMailSender.send(email, "Notice from 'BookingHotel'", body);
		roomService.delete(id);
		
		return "redirect:/admin/room-list-approval";
	}
	
	

	
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
