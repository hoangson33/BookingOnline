package com.demo.controllers.user;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.mail.MessagingException;
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

import com.demo.email.SmtpMailSender;
import com.demo.helpers.UploadHelper;
import com.demo.models.Account;
import com.demo.models.InfoRoom;
import com.demo.models.Reservation;
import com.demo.models.ReservationCancel;
import com.demo.models.Roles;
import com.demo.services.AccountService;
import com.demo.services.HighlightService;
import com.demo.services.ReservationCancelService;
import com.demo.services.ReservationService;
import com.demo.services.RoleService;
import com.demo.services.RoomService;
import com.demo.validators.InfoRoomValidator;



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
	
	@Autowired
	private InfoRoomValidator infoRoomValidator;
	
	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private ReservationCancelService reservationCancelService;
	
	@Autowired
	private SmtpMailSender smtpMailSender;
	
	private int idResevation;
	
	
	
	

	
	public int getIdResevation() {
		return idResevation;
	}


	public void setIdResevation(int idResevation) {
		this.idResevation = idResevation;
	}


	@RequestMapping(value = "profile", method = RequestMethod.GET)
	public String profile(Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		Account account = accountService.findByUsername2(name);

		modelMap.put("accounts", accountService.findByUsername(name));
		modelMap.put("invoiceCount", reservationService.countInvoice(account.getIdAcc()));
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
			@RequestParam(value = "file") MultipartFile file , RedirectAttributes redirectAttributes,Authentication authentication,ModelMap modelMap
			, @RequestParam("phone") int phone,@RequestParam("email") String email) {
		if(bindingResult.hasErrors()) {
		return "users/enterprise/profile_edit";
	}
		if(phone < 0) {
			modelMap.put("error", "You cannot enter negative numbers!?"); 
			return "users/enterprise/profile_edit";
		}
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accounts", accountService.findByUsername(name));
		
		
			Account accountOld = accountService.findIdAcc(account.getIdAcc());
			System.out.println("id acc : " + account.getIdAcc());
			System.out.println("email acc : " + accountOld.getEmail());
			System.out.println("email : " + email);
			List<Account>  allAccount = accountService.findAllAccountList(account.getIdAcc());
			for(Account account1 : allAccount) {
				if(!account1.getEmail().equalsIgnoreCase(email)) {
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
				
					
					String avatar = accountService.findAvatar(account.getIdAcc());
					System.out.println("avatar  : " + avatar);
					modelMap.put("erroremail", "This email already exists !?");
					modelMap.put("errorsemail", "Re-enter another email !");
					return "users/enterprise/profile_edit";
				}
				
			}
			

		accountService.save(account);
		return "redirect:/enterprise/profile";
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
	
	
	@RequestMapping(value =  "edit-room", method = RequestMethod.GET)
	public String editRoom(@RequestParam("idRoom") int idRoom,ModelMap modelMap
			,Authentication authentication) {
		
			String name = authentication.getName();
			InfoRoom infoRoom = roomService.roomInfoByIdRoom(idRoom);
			Account account = accountService.findByUsername2(name);
			
			
			List<String> convertedHightlight = Arrays.asList(infoRoom.getHighlightRoom().split(",", -1));
			modelMap.put("highlights", convertedHightlight);
			modelMap.put("idAcc", account.getIdAcc());
			
			modelMap.put("highlightS", highlightService.findAll());
			
			
			
			modelMap.put("imgRoom", infoRoom.getImgRoom());
			
			
			System.out.println("username " + authentication.getName());
			

			modelMap.put("accounts", accountService.findByUsername(name));
			
		modelMap.put("roomlist", roomService.roomInfoByIdRoom(idRoom));
		modelMap.put("roomlists", roomService.roomInfoByIdRoom(idRoom));	
		return "users/enterprise/room_edit";
	}
	
	
	@RequestMapping(value = "edit-room", method = RequestMethod.POST )
	public String editRoom(@ModelAttribute("roomlist")@Valid InfoRoom infoRoom,BindingResult bindingResult,
			@RequestParam(value = "mainImage") MultipartFile mainImageFile,@RequestParam(value = "extraImage") MultipartFile[] extraImageFile
			,RedirectAttributes redirectAttributes, @RequestParam(value = "idRoom") int idRoom, ModelMap modelMap 
			,Authentication authentication,@RequestParam("price") double price ,@RequestParam("salePrice") double salePrice
			,@RequestParam("guestChildren") int guestChildren,@RequestParam("guestAdult") int guestAdult) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		

		modelMap.put("accounts", accountService.findByUsername(name));

		infoRoomValidator.validate(infoRoom, bindingResult);
		if(bindingResult.hasErrors()) {
			
			modelMap.put("roomlists", roomService.roomInfoByIdRoom(infoRoom.getIdRoom()));			
			modelMap.put("highlightS", highlightService.findAll());
			return "users/enterprise/room_edit";
		}
//		if(price < 0 && salePrice < 0 && guestChildren < 0 && guestAdult < 0) {
//			modelMap.put("highlightS", highlightService.findAll());
//			modelMap.put("errorPrice", "You cannot enter negative numbers!?"); 
//			modelMap.put("errorSalePrice", "You cannot enter negative numbers!?"); 
//			modelMap.put("errorGuestChildren", "You cannot enter negative numbers!?"); 
//			modelMap.put("errorGuestAdult", "You cannot enter negative numbers!?"); 
//			return "users/enterprise/room_edit";		
//		}
		if(guestChildren < 0) {
			modelMap.put("highlightS", highlightService.findAll());
			modelMap.put("errorGuestChildren", "You cannot enter negative numbers!?");  
			
			return "users/enterprise/room_edit";
		}else
			if(guestAdult < 0) {
			modelMap.put("highlightS", highlightService.findAll());
			modelMap.put("errorGuestAdult", "You cannot enter negative numbers!?");  
			
			return "users/enterprise/room_edit";
		}else
		if(price < 0) {
			modelMap.put("highlightS", highlightService.findAll());
			modelMap.put("errorPrice", "You cannot enter negative numbers!?"); 
			
			return "users/enterprise/room_edit";		
		}else
		if(salePrice < 0) {
			modelMap.put("highlightS", highlightService.findAll());
			modelMap.put("errorSalePrice", "You cannot enter negative numbers!?");
			return "users/enterprise/room_edit";		
		}
		
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
	public String addRoom(@ModelAttribute("infoRoom")@Valid InfoRoom infoRoom,BindingResult bindingResult  ,@RequestParam(value = "mainImage") MultipartFile mainImageFile, Authentication authentication, 
			RedirectAttributes redirectAttributes,@RequestParam(value = "extraImage") MultipartFile[] extraImageFile
			, ModelMap modelMap,@RequestParam("price") double price,@RequestParam("salePrice") double salePrice,
			@RequestParam("guestChildren") int guestChildren,@RequestParam("guestAdult") int guestAdult) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		

		modelMap.put("accounts", accountService.findByUsername(name));
		
		infoRoomValidator.validate(infoRoom, bindingResult);
		if(bindingResult.hasErrors()) {
			modelMap.put("highlights", highlightService.findAll());
			return "users/enterprise/addroom";
		}
		if(guestChildren < 0) {
			modelMap.put("highlightS", highlightService.findAll());
			modelMap.put("errorGuestChildren", "You cannot enter negative numbers!?");  
			
			return "users/enterprise/room_edit";
		}else
			if(guestAdult < 0) {
			modelMap.put("highlightS", highlightService.findAll());
			modelMap.put("errorGuestAdult", "You cannot enter negative numbers!?");  
			
			return "users/enterprise/room_edit";
		}else
		if(price < 0) {
			modelMap.put("highlights", highlightService.findAll());
			modelMap.put("errorprice", "You cannot enter negative numbers!?"); 
		
			return "users/enterprise/addroom";
		}else if( salePrice < 0) {
			modelMap.put("highlights", highlightService.findAll());
			
			modelMap.put("errorssalePrice", "You cannot enter negative numbers!?"); 
			return "users/enterprise/addroom";
		} 
		
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
			infoRoom.setTotal(discountPrice(infoRoom.getPrice(), infoRoom.getSalePrice()));
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
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		

		modelMap.put("accounts", accountService.findByUsername(name));
			
//			InfoRoom infoRoom = roomService.roomInfoByIdRoom(idRoom);
//			
//			
//			List<String> convertedHightlight = Arrays.asList(infoRoom.getHighlightRoom().split(",", -1));
//			modelMap.put("highlights", convertedHightlight);
			System.out.println("idAcc " + idAcc);
		
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
	
	
	@RequestMapping(value = "invoice/{idAcc}", method = RequestMethod.GET)
	public String invoice(@PathVariable("idAcc") String idAcc,Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		Account account = accountService.findByUsername2(name);
		modelMap.put("accounts", accountService.findByUsername(name));
		modelMap.put("invoiceCount", reservationService.countInvoice(account.getIdAcc()));
		modelMap.put("invoiceWaits", reservationService.invoiceEnterprise(idAcc));
		modelMap.put("invoiceCancel", reservationService.invoiceEnterpriseCancel(idAcc));
		modelMap.put("invoiceConfirm", reservationService.invoiceEnterpriseConfirm(idAcc));
		return "users/enterprise/invoice"; 
	}
	
	
	@RequestMapping(value = "invoice-detail", method = RequestMethod.GET)
	public String invoiceDetail(@RequestParam("idReservation")int idReservation,Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		modelMap.put("accounts", accountService.findByUsername(name));
		modelMap.put("invoices", reservationService.reserInfo(idReservation));
		modelMap.put("reservationCancelled", reservationCancelService.existCancelled(idReservation));
		Reservation reservation = new Reservation();
		modelMap.put("reservation", reservation);
		setIdResevation(idReservation);
		return "users/enterprise/invoice_detail";
	}
	
	
	@RequestMapping(value =  "confirm-invoice", method = RequestMethod.POST)
	public String deleteRoom(@ModelAttribute("reservation") Reservation reservation) throws MessagingException {
		System.out.println("id reservation  " + reservation.getIdReservation());
		Reservation reservationOld = reservationService.reserInfo2(reservation.getIdReservation());
		reservation.setCustomerId(reservationOld.getCustomerId());
		reservation.setCheckIn(reservationOld.getCheckIn());
		reservation.setCheckOut(reservationOld.getCheckOut());
		reservation.setName(reservationOld.getName());
		reservation.setEmail(reservationOld.getEmail());
		reservation.setPhone(reservationOld.getPhone());
		reservation.setAdult(reservationOld.getAdult());
		reservation.setChildren(reservationOld.getChildren());
		reservation.setStatus(true);;
		reservation.setStatusCancel(false);
		reservation.setCreated(reservationOld.getCreated());
		
		reservationService.save(reservation);
		
		
		//String email = accountService.findEmail(idAcc);
		//String body = "<p>We would like to inform you that your request to register your business on the 'BookingHotel' website has been rejected for the following reasons: </p>" + desc +"<br>";
		
		//body +=  "Thank you" + "<br>" +"The BookingHotel Team";
		//smtpMailSender.send(email, "Notice from 'BookingHotel'", body);
		
		return "redirect:/enterprise/invoice-detail?idReservation=" + reservation.getIdReservation();
	}
	
	public double discountPrice(double price, double disount) {
		if(disount != 0) {
			return (price*disount)/100;
		}
		return price;
	}

	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
