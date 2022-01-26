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
import com.demo.models.Reservation;
import com.demo.models.ReservationCancel;
import com.demo.models.Roles;
import com.demo.services.AccountService;
import com.demo.services.ReservationCancelService;
import com.demo.services.ReservationService;
import com.demo.services.RoleService;
import com.demo.services.RoomService;
import com.demo.validators.AccountValidator;
import com.demo.validators.InfoRoomValidator;
import com.demo.validators.ReservationValidator;
import com.demo.validators.RolesValidator;

@Controller
@RequestMapping(value = {"","admin"})
public class AdminController implements ServletContextAware {
	@Autowired
	private RolesValidator rolesValidator;
	
	@Autowired
	private ReservationValidator reservationValidator;
	
	@Autowired
	private ReservationService reservationService;
	
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
	private ReservationCancelService reservationCancelService;
	
	
	@Autowired
	private InfoRoomValidator infoRoomValidator;
	
	private int idReservation;

	public int getIdReservation() {
		return idReservation;
	}

	public void setIdReservation(int idReservation) {
		this.idReservation = idReservation;
	}

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
		modelMap.put("countRoomWaitAprroval", roomService.countRoomWaitApproval());
		modelMap.put("datenow", new Date());
		
		return "admin/room_list";
	}
	
	@RequestMapping(value = "room-list/{idAcc}", method = RequestMethod.GET)
	public String roomListIdAcc(@PathVariable("idAcc")String idAcc,ModelMap modelMap, Authentication authentication) {
		modelMap.put("roomlists", roomService.roomInfoOfIdAcc(idAcc));
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		modelMap.put("datenow", new Date());
		return "admin/room_list";
	}
	
	@RequestMapping(value = {"","room-list-approval"}, method = RequestMethod.GET)
	public String roomListApproval(ModelMap modelMap, Authentication authentication) {
		
		
		modelMap.put("roomlists", roomService.findRoomApproval());
		
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		modelMap.put("datenow", new Date());
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
	public String addAcc(@ModelAttribute("account")@Valid Account account, BindingResult bindingResult,
			ModelMap modelMap,@RequestParam("email") String email,@RequestParam("username") String username) {
		accountValidator.validate(account, bindingResult);
		if(bindingResult.hasErrors()) {
			return "admin/account_add";
		}
		
		System.out.println("email :" + email);
		String idacc = accountService.findIdAccs(email);
		System.out.println("idAcc : " + idacc);
		String idaccuser = accountService.findIdAccUser(username);
			if(idacc == null && idaccuser == null) {
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
			}else {
				modelMap.put("error", "Username or Email already registered !");
				return "admin/account_add";
			}
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
			@RequestParam(value = "file") MultipartFile file , RedirectAttributes redirectAttributes, ModelMap modelMap
			,@RequestParam("email")String email) {
		accountValidator.validate(account, bindingResult);
		if(bindingResult.hasErrors()) {
			modelMap.addAttribute("avatar", accountService.findAvatar(account.getIdAcc()));
			
			return "admin/account_edit";
		}
		Account accountOld = accountService.findIdAcc(account.getIdAcc());
		System.out.println("id acc : " + account.getIdAcc());
		System.out.println("email acc : " + accountOld.getEmail());
		System.out.println("email : " + email);
		List<Account>  allAccount = accountService.findAllAccountList(account.getIdAcc());
		for(Account account1 : allAccount) {
			if(!account1.getEmail().equalsIgnoreCase(email)) {
				account.setDatecreated(new Date());
				String idRole =  account.getIdRole();
				account.setIdRole(idRole);
				System.out.println("id role : " + idRole);
				account.getRoleses().add(roleService.find(Integer.parseInt(account.getIdRole())));
				account.setStatus(true);
				String fileName = UUID.randomUUID().toString().replace("-", "");
				String fileNameUpload = UploadHelper.upload(servletContext, file);
				redirectAttributes.addFlashAttribute("fileName", fileNameUpload);
				if(fileNameUpload != null) {
					account.setAvatar(fileNameUpload);
				}else {
					account.setAvatar(accountOld.getAvatar());
				}
			}else if(account1.getEmail().equalsIgnoreCase(email) && account.getIdAcc().equalsIgnoreCase(account1.getIdAcc())){
				account.setDatecreated(new Date());
				account.setGender(accountOld.getGender());
				String idRole =  account.getIdRole();
				account.setIdRole(idRole);
				System.out.println("id role : " + idRole);
				account.getRoleses().add(roleService.find(Integer.parseInt(account.getIdRole())));
				account.setStatus(true);
				String fileName = UUID.randomUUID().toString().replace("-", "");
				String fileNameUpload = UploadHelper.upload(servletContext, file);
				redirectAttributes.addFlashAttribute("fileName", fileNameUpload);
				if(fileNameUpload != null) {
					account.setAvatar(fileNameUpload);
				}else {
					account.setAvatar(accountOld.getAvatar());
				}
			}else if(account1.getEmail().equalsIgnoreCase(email) && !account.getIdAcc().equalsIgnoreCase(account1.getIdAcc())){
			
				modelMap.addAttribute("avatar", accountService.findAvatar(account.getIdAcc()));
				String avatar = accountService.findAvatar(account.getIdAcc());
				System.out.println("avatar  : " + avatar);
				modelMap.put("erroremail", "This email already exists !?");
				modelMap.put("errorsemail", "Re-enter another email !");
				return "admin/account_edit";
			}
			
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
		roomService.deleteById(id);
		
		return "redirect:/admin/room-list";
	}
	
	
	
	
	
	
	@RequestMapping(value =  "edit-room/{idRoom}", method = RequestMethod.GET)
	public String editRoom(@PathVariable("idRoom") int idRoom,ModelMap modelMap,Authentication authentication) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		modelMap.put("infoRoom", roomService.roomInfoByIdRoom(idRoom));
		modelMap.put("infoRooms", roomService.roomInfoByIdRoom(idRoom));
		modelMap.put("idRoom", idRoom);

		return "admin/room_edit";
	}
	
	@RequestMapping(value = "edit-room", method = RequestMethod.POST )
	public String editRoom(@ModelAttribute("infoRoom")@Valid InfoRoom infoRoom, BindingResult bindingResult
			,@RequestParam("guestChildren") int guestChildren,@RequestParam("guestAdult") int guestAdult
			,@RequestParam("price") double price, ModelMap modelMap,@RequestParam("salePrice") double salePrice,Authentication authentication) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		infoRoomValidator.validate(infoRoom, bindingResult);
		if(bindingResult.hasErrors()) {
			modelMap.put("infoRooms", roomService.roomInfoByIdRoom(infoRoom.getIdRoom()));
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
	
	
	@RequestMapping(value = "reservation-management-idCustomer/{idAcc}", method = RequestMethod.GET )
	public String reservationManagementIdCustomer(@PathVariable("idAcc") String idAcc,Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		
		modelMap.put("account", accountService.findIdAcc(idAcc));
		modelMap.put("revations", reservationService.reserInfoidAcc(idAcc));
		modelMap.put("datenow", new Date());
		
		return "admin/reservation_management";
	}

	@RequestMapping(value = "reservation-management", method = RequestMethod.GET)
	public String reservationManagement(ModelMap modelMap,Authentication authentication) {
		
		modelMap.put("accounts", accountService.findAllAccount());
		
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("revations", reservationService.findAll());
		System.out.println("name " + name);
		modelMap.put("datenow", new Date());
		
		
		
		return "admin/reservation_management";
	}
	
	@RequestMapping(value = "reservation-management/{idRoom}", method = RequestMethod.GET)
	public String reservationManagementByIdRoom(@PathVariable("idRoom") int idRoom,ModelMap modelMap,Authentication authentication) {
		
		modelMap.put("accounts", accountService.findAllAccount());
		
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("revations", reservationService.reservationEnterpriseByIdRoom(idRoom));
		System.out.println("name " + name);
		modelMap.put("datenow", new Date());
		
		
		
		return "admin/reservation_management";
	}
	
	
	@RequestMapping(value =  "editReservation/{idReservation}", method = RequestMethod.GET)
	public String editReservation(@PathVariable("idReservation") int idReservation,ModelMap modelMap,Authentication authentication) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		
		setIdReservation(idReservation);
		
		modelMap.put("reservation", reservationService.reserInfo2(idReservation));
		Reservation reservation =reservationService.reserInfo2(idReservation);
		modelMap.put("listIdRooms", roomService.findRoomTrueOfAcc(reservation.getInfoRoom().getAccount().getIdAcc()));
		modelMap.put("accounts", accountService.findByUsername(name));
		modelMap.put("invoices", reservationService.reserInfo(idReservation));
		ReservationCancel reservationCancelByWho = reservationCancelService.existCancelled(idReservation);
		modelMap.put("cancelledBy", reservationCancelByWho);
		ReservationCancel reservationCancel = new ReservationCancel();
		modelMap.put("reservationCancel", reservationCancel);
		Reservation reservationCount = reservationService.reserInfo2(idReservation);
		modelMap.put("countCancelled", reservationCancelService.countCancalledCustomer(reservationCount.getCustomerId()));
		
		return "admin/reservation_edit";
	}
	
	@RequestMapping(value = "editReservation", method = RequestMethod.POST )
	public String editReservation(@ModelAttribute("reservation")@Valid Reservation reservation,BindingResult bindingResult,
			Authentication authentication, ModelMap modelMap,@RequestParam("email")String email) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accountss", accountService.findByUsername(name));
		System.out.println("name " + name);
		
		
		
		reservationValidator.validate(reservation, bindingResult);
		if(bindingResult.hasErrors()) {
			
			Reservation reservation2 =reservationService.reserInfo2(getIdReservation());
			modelMap.put("listIdRooms", roomService.findRoomTrueOfAcc(reservation2.getInfoRoom().getAccount().getIdAcc()));
			
			modelMap.put("accounts", accountService.findByUsername(name));
			modelMap.put("invoices", reservationService.reserInfo(reservation.getIdReservation()));
			ReservationCancel reservationCancelByWho = reservationCancelService.existCancelled(reservation.getIdReservation());
			modelMap.put("cancelledBy", reservationCancelByWho);
			ReservationCancel reservationCancel = new ReservationCancel();
			modelMap.put("reservationCancel", reservationCancel);
			Reservation reservationCount = reservationService.reserInfo2(reservation.getIdReservation());
			modelMap.put("countCancelled", reservationCancelService.countCancalledCustomer(reservationCount.getCustomerId()));
			return "admin/reservation_edit";
		}
		
		
		System.out.println("email : " + email);
		String idacc = accountService.findIdAccs(email);
		
		System.out.println("idAcc : " + idacc);

		if(idacc != null) {
			reservation.getTotal();
			reservation.setCreated(new Date());
			reservation.setStatus(true);
			reservation.setUpdated(new Date());
			reservationService.save(reservation);
		}else {
			Reservation reservation2 =reservationService.reserInfo2(getIdReservation());
			modelMap.put("listIdRooms", roomService.findRoomTrueOfAcc(reservation2.getInfoRoom().getAccount().getIdAcc()));
			modelMap.put("error", " Email does not exist or not registered!?");
			modelMap.put("accounts", accountService.findByUsername(name));
			modelMap.put("invoices", reservationService.reserInfo(reservation.getIdReservation()));
			ReservationCancel reservationCancelByWho = reservationCancelService.existCancelled(reservation.getIdReservation());
			modelMap.put("cancelledBy", reservationCancelByWho);
			ReservationCancel reservationCancel = new ReservationCancel();
			modelMap.put("reservationCancel", reservationCancel);
			Reservation reservationCount = reservationService.reserInfo2(reservation.getIdReservation());
			modelMap.put("countCancelled", reservationCancelService.countCancalledCustomer(reservationCount.getCustomerId()));
			return "admin/reservation_edit";
		}
//		reservation.getTotal();
//		reservation.setCreated(new Date());
//		reservation.setStatus(true);
//		reservation.setUpdated(new Date());
		
	
		return "redirect:/admin/reservation-management";
	}
	
	
	@RequestMapping(value =  "cancel-invoice", method = RequestMethod.POST)
	public String cancelInvoice(@ModelAttribute("reservationCancel") ReservationCancel reservationCancel,
			@RequestParam("reason") String reason) throws MessagingException {
		System.out.println("Reason  " + reason);
		reservationCancel.setCreated(new Date());
		reservationCancelService.save(reservationCancel);
		Reservation reservation = reservationService.reserInfo2(reservationCancel.getReservation().getIdReservation());
		reservation.getIdReservation();
		reservation.getCustomerId();
		reservation.getCheckIn();
		reservation.getCheckOut();
		reservation.getName();
		reservation.getEmail();
		reservation.getPhone();
		reservation.getAdult();
		reservation.getChildren();
		reservation.setStatus(false);;
		reservation.setStatusCancel(true);
		reservation.setPaymentStatus(false);
		reservation.setUpdated(new Date());
		reservationService.save(reservation);
		
		
		
		
		InfoRoom infoRoom = roomService.roomInfoByIdRoom(reservation.getInfoRoom().getIdRoom());
		Account account = accountService.findIdAcc(reservation.getCustomerId());
		String email = accountService.findEmail(reservation.getCustomerId());
		String body = "<p>Dear Mr/Mrs.</p>" + account.getName()+"<br>";
		body += infoRoom.getAccount().getName() +" Hotel would like to send to you, your room has been canceled for the following reasons: " +"<br>";
		body += reason + "<br>";
		body += "Your reservation information : " + "Check in : " + reservation.getCheckIn() + "/ Check out : " + reservation.getCheckOut();
		body += " Number of people : " + reservation.getAdult() + " Adult " + reservation.getChildren() + " Children";
		body += "Your contact infomation : " + reservation.getEmail() + " | " + reservation.getPhone();
		body += "<hr>" + "Room information : " + "<br>" + infoRoom.getRoomCategory() + " Room " + "| " +infoRoom.getAccount().getLocationDetail() + "," + infoRoom.getAccount().getLocation() + "<br>" ;
		body += "Number of guests : " + infoRoom.getGuestAdult() + " Adult " + infoRoom.getGuestChildren() + " Children <br>";
 		body += "Available date : " + infoRoom.getCheckIn() + " to " + infoRoom.getCheckOut() + "<br>";
 		body += " For more information please visit : " + "http://localhost:9799/customer/invoice-detail?idReservation=" + reservation.getIdReservation() + "<br>";
		body +=  " Thanks for booking" + "<br>" +"The BookingHotel Team" + ". Need Help? Contact us: " + infoRoom.getAccount().getPhone();
 		
		smtpMailSender.send(email, "Notice from 'BookingHotel'", body);
		
		return "redirect:/admin/reservation-management";
	}
	
	
	@RequestMapping(value =  "completed-invoice", method = RequestMethod.POST)
	public String completedInvoice(@ModelAttribute("reservation") Reservation reservation) throws MessagingException {
		Reservation reservationOld = reservationService.reserInfo2(reservation.getIdReservation());
		
		reservation.setStatus(true);;
		reservation.setStatusCancel(false);
		reservation.setPaymentStatus(true);
		reservation.setCreated(reservationOld.getCreated());
		reservation.setUpdated(reservationOld.getUpdated());
		
		reservationService.save(reservation);
		
		
		return "redirect:/admin/reservation-management";
	}
	
	@RequestMapping(value =  "deleteReservation/{id}", method = RequestMethod.GET)
	public String deleteReservation(@PathVariable("id") int id) {
		reservationService.deleteById(id);
		
		return "redirect:/admin/reservation-management";
	}
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
