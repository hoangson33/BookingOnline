package com.demo.controllers.user;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
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
import com.demo.models.DetailBill;
import com.demo.models.InfoRoom;
import com.demo.models.Reservation;
import com.demo.models.Roles;
import com.demo.paypal.PayPalConfig;
import com.demo.paypal.PayPalResult;
import com.demo.paypal.PayPalSucess;
import com.demo.repositories.ReservationRepository;
import com.demo.services.AccountService;
import com.demo.services.HighlightService;
import com.demo.services.ReservationService;
import com.demo.services.RoleService;
import com.demo.services.RoomService;
import com.demo.validators.AccountValidator;

@Controller
@RequestMapping(value = {"","customer"})
public class CustomerController implements ServletContextAware{
	private ServletContext servletContext;
	
	@Autowired
	private Environment environment;
	
	@Autowired
	private AccountValidator accountValidator;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private HighlightService highlightService;

	@Autowired
	private RoomService roomService;
	
	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private AccountService accountService;
	
	@RequestMapping(value = {"","customer"}, method = RequestMethod.GET)
	public String index(Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/customer/profile";
	}
	@RequestMapping(value =  "editCus/{id}", method = RequestMethod.GET)
	public String editAcc(@PathVariable("id") String id,ModelMap modelMap) {
		modelMap.put("account", accountService.findIdAcc(id));
		System.out.println("id acc : " + id);
		modelMap.addAttribute("avatar", accountService.findAvatar(id));
		String avatar = accountService.findAvatar(id);
		System.out.println("avatar  : " + avatar);
		
		return "users/customer/profile_editcus";
	}
	
	@RequestMapping(value = "editCus", method = RequestMethod.POST )
	public String editAcc(@ModelAttribute("account")@Valid Account account, BindingResult bindingResult,
			@RequestParam(value = "file") MultipartFile file , RedirectAttributes redirectAttributes,Authentication authentication,ModelMap modelMap ) {
		accountValidator.validate(account, bindingResult);
		if(bindingResult.hasErrors()) {
			return "users/customer/profile_editcus";
		}
			System.out.println("username " + authentication.getName());
			String name = authentication.getName();
			modelMap.put("accounts", accountService.findByUsername(name));
			
			
				Account accountOld = accountService.findIdAcc(account.getIdAcc());
				System.out.println("id acc : " + accountOld);
			

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
				
				accountService.save(account);
				return "redirect:/home/welcomeCustomer";
		
	}
		

	@RequestMapping(value = "changepass", method = RequestMethod.GET)
	public String changepass(Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		return "users/customer/changepass";
	}

	@RequestMapping(value = "editpass", method = RequestMethod.POST)
	public String editpass(Authentication authentication,ModelMap modelMap, @RequestParam("passwordOld") String passwordOld, 
			 @RequestParam("passwordNew") String passwordNew ,@RequestParam("passwordNewMatch") String passwordNewMatch) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		Account account = accountService.findByUsername2(name); /// username truyền vào
	
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
			return "users/customer/changepass";
		}
			
	}
	
	
	
	
	@RequestMapping(value =  "room-list-of/{idAcc}", method = RequestMethod.GET)
	public String roomListOf(@PathVariable("idAcc") String idAcc,ModelMap modelMap
			,Authentication authentication) {
		
		
			Account account =accountService.findIdAcc(idAcc);
			modelMap.put("nameHotel", account.getName());
			
			modelMap.put("highlightS", highlightService.findAll());
			
			
			modelMap.put("roomlists", roomService.roomInfoByIdAcc(idAcc));
		return "users/customer/room_list_of";
	}
		
	
	@RequestMapping(value =  "view-room/{idRoom}", method = RequestMethod.GET)
	public String viewRoom(@PathVariable("idRoom") int idRoom,ModelMap modelMap
			,Authentication authentication) {
		
			String name = authentication.getName();
			InfoRoom infoRoom = roomService.roomInfoByIdRoom(idRoom);
			Account account = accountService.findByUsername2(name);
			modelMap.put("account", account);
			Reservation reservation = new Reservation();
			modelMap.put("reservation", reservation);
			
			
			List<String> convertedHightlight = Arrays.asList(infoRoom.getHighlightRoom().split(",", -1));
			modelMap.put("highlights", convertedHightlight);
			modelMap.put("idAcc", account.getIdAcc());
			System.out.println("" + convertedHightlight);
			
			modelMap.put("discountPrice", discountPrice(infoRoom.getPrice(), infoRoom.getSalePrice()));
			modelMap.put("imgRoom", infoRoom.getImgRoom());
			
			
			String authtoken = environment.getProperty("paypal.authtoken");
			System.out.println("authtoken: " + authtoken);
			String posturl = environment.getProperty("paypal.posturl");
			System.out.println("posturl: " + posturl);
			String business = environment.getProperty("paypal.business");
			System.out.println("business: " + business);
			String returnurl = environment.getProperty("paypal.returnurl");
			System.out.println("returnurl: " + returnurl);
			modelMap.put("authtoken", authtoken);
			modelMap.put("posturl", posturl);
			modelMap.put("business", business);
			modelMap.put("returnurl", returnurl);
			modelMap.put("roomlistPaypal", roomService.roomInfoByIdRoomPaypal(idRoom));
		modelMap.put("roomlist", roomService.roomInfoByIdRoom(idRoom));
		return "users/customer/view_room";
	}
	
	
	
	@RequestMapping(value = "book-room", method = RequestMethod.GET )
	public String bookRoom(@ModelAttribute("reservation") Reservation reservation,
			ModelMap modelMap,HttpServletRequest request ) {
		PayPalConfig payPalConfig = new PayPalConfig();
		String authtoken = environment.getProperty("paypal.authtoken");
		String posturl = environment.getProperty("paypal.posturl");
		String business = environment.getProperty("paypal.business");
		String returnurl = environment.getProperty("paypal.returnurl");
		payPalConfig.setAuthToken(authtoken);
		payPalConfig.setBusiness(business);
		payPalConfig.setPosturl(posturl);
		payPalConfig.setReturnurl(returnurl);
		PayPalResult result =PayPalSucess.getPayPal(request, payPalConfig);
		System.out.println("fist name: " + result.getFirst_name());
		System.out.println("id Txn_ID: " + result.getTxn_id());
		System.out.println("last name: " + result.getLast_name());
		System.out.println("email: " + result.getPayer_email());
		System.out.println("Country: " + result.getAddress_country());
		System.out.println("City: " + result.getAddress_city());
		
		
		
//		try {
//			
//			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
//			String CheckIn =  String.valueOf(reservation.getCheckIn()) ;
//			String CheckOut =  String.valueOf(reservation.getCheckOut()) ;
//			reservation.setCreated(new Date());
//			reservation.setCheckIn(simpleDateFormat.parse(CheckIn)) ;
//			reservation.setCheckOut(simpleDateFormat.parse(CheckOut)) ;
//			System.out.println("name ++++++++++: " + reservation.getName());
//			
//			
//			
//		} catch (ParseException e) {
//			System.err.println(e.getMessage());
//		}
//		
//		reservationService.save(reservation);
		return "redirect:/home/welcomeCustomer";
		
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
