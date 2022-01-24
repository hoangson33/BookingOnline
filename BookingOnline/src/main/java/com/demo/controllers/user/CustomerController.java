package com.demo.controllers.user;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.print.attribute.standard.DateTimeAtCompleted;
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
import com.demo.models.GuestRating;
import com.demo.models.InfoRoom;
import com.demo.models.Reservation;
import com.demo.models.ReservationCancel;
import com.demo.models.Roles;
import com.demo.paypal.PayPalConfig;
import com.demo.paypal.PayPalResult;
import com.demo.paypal.PayPalSucess;
import com.demo.repositories.ReservationRepository;
import com.demo.services.AccountService;
import com.demo.services.GuestRatingService;
import com.demo.services.HighlightService;
import com.demo.services.ReservationCancelService;
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
	private ReservationCancelService reservationCancelService;
	
	@Autowired
	private GuestRatingService guestRatingService;
	
	@Autowired
	private AccountService accountService;
	
	private int idCancel;
	
	private int idReservation;
	
	private int idRoom;
	
	private String checkIn;
	
	private String checkOut;

	private String name;
	
	private int phone;
	
	private String email;
	
	private int adult;
	
	private int children;
	
	private String error;
	
	private String errorPeopel;
	
	
	
	

	
	public String getErrorPeopel() {
		return errorPeopel;
	}
	public void setErrorPeopel(String errorPeopel) {
		this.errorPeopel = errorPeopel;
	}
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}
	public String getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}
	public String getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getChildren() {
		return children;
	}
	public void setChildren(int children) {
		this.children = children;
	}
	public int getIdRoom() {
		return idRoom;
	}
	public void setIdRoom(int idRoom) {
		this.idRoom = idRoom;
	}
	public int getIdReservation() {
		return idReservation;
	}
	public void setIdReservation(int idReservation) {
		this.idReservation = idReservation;
	}
	public int getIdCancel() {
		return idCancel;
	}
	public void setIdCancel(int idCancel) {
		this.idCancel = idCancel;
	}
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
			@RequestParam(value = "file") MultipartFile file , RedirectAttributes redirectAttributes,Authentication authentication,ModelMap modelMap
			,@RequestParam("email") String email) {
		accountValidator.validate(account, bindingResult);
		if(bindingResult.hasErrors()) {			
			String avatar = accountService.findAvatar(account.getIdAcc());
			
			System.out.println("avatar  : " + avatar);
	
			return "users/customer/profile_editcus";
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
						return "users/customer/profile_editcus";
					}
					
				}
				

			accountService.save(account);
			return "redirect:/customer";
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
		
	
	@RequestMapping(value =  "view-room", method = RequestMethod.GET)
	public String viewRoom(@RequestParam("idRoom") int idRoom,ModelMap modelMap
			,Authentication authentication ) {
	
		modelMap.put("errorCheckDate", getError());
		modelMap.put("errorCheckPeople", getErrorPeopel());
		
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(name));
		
		
		
			InfoRoom infoRoom = roomService.roomInfoByIdRoom(idRoom);
			Account account = accountService.findByUsername2(name);
			modelMap.put("account", account);
			Reservation reservation = new Reservation();
			modelMap.put("reservation", reservation);
			DetailBill detailBill = new DetailBill();	
			modelMap.put("detailBill", detailBill);
			
			setIdRoom(idRoom);
		
			
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
			modelMap.put("fivestar", guestRatingService.count5Star(idRoom));
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
	
	
	
	@RequestMapping(value = "book-room-cash", method = RequestMethod.GET )
	public String bookRoomCash(
			@ModelAttribute("detailBill") DetailBill detailBill,ModelMap modelMap,
			@RequestParam("checkIn")String checkIn, @RequestParam("checkOut")String checkOut,
			@RequestParam("name")String name,@RequestParam("phone")int phone, @RequestParam("email")String email,
			@RequestParam("adult") int adult,@RequestParam("children") int children,Authentication authentication,
			@RequestParam("idRoom") int idRoom,@RequestParam("checkInRoom")String checkInRoom, @RequestParam("checkOutRoom")String checkOutRoom,
			@RequestParam("adultRoom") int adultRoom,@RequestParam("childrenRoom") int childrenRoom) {
		
		
		System.out.println("checkInRoom " + checkInRoom.replace("-",""));
		System.out.println("checkOutRoom " + checkOutRoom.replace("-",""));
		
		int checkinroom = Integer.parseInt(checkInRoom.replace("-","")) ;
		int checkoutroom = Integer.parseInt(checkOutRoom.replace("-",""));
		
		int checkin = Integer.parseInt(checkIn.replace("-","")) ;
		int checkout = Integer.parseInt(checkOut.replace("-","")) ;
		if(checkin < checkinroom || checkout > checkoutroom) {
			setError("Your checkin or checkout date must correspond to the hotel's checkin and checkout date !");
			return "redirect:/customer/view-room?idRoom=" + idRoom;
		}
		
		if(adult > adultRoom || children > childrenRoom) {
			setErrorPeopel("The number of adults and children must correspond to the hotel!");
			return "redirect:/customer/view-room?idRoom=" + idRoom;
		}
		
		String names = authentication.getName();

		modelMap.put("accounts", accountService.findByUsername(names));
		
		
		
		Reservation reservation = new Reservation();
		modelMap.put("reservation", reservation);

		InfoRoom infoRoom = roomService.roomInfoByIdRoom(idRoom);
		modelMap.put("infoRoom", infoRoom);

	
		
		modelMap.put("checkIn", checkIn);
		setCheckIn(checkIn);
		modelMap.put("checkOut", checkOut);
		setCheckOut(checkOut);
		modelMap.put("name", name);
		setName(name);
		modelMap.put("phone", phone);
		setPhone(phone);
		modelMap.put("adult", adult);
		setAdult(adult);
		modelMap.put("children", children);
		setChildren(children);
		modelMap.put("email", email);
		setEmail(email);
		String nameAcc = authentication.getName();
		Account account = accountService.findByUsername2(nameAcc);
		modelMap.put("account", accountService.findIdAcc(account.getIdAcc()));
		modelMap.put("idRoom", idRoom);
		
		modelMap.put("fivestar", guestRatingService.count5Star(idRoom));
		modelMap.put("fourstar", guestRatingService.count4Star(idRoom));
		modelMap.put("threestar", guestRatingService.count3Star(idRoom));
		modelMap.put("twostar", guestRatingService.count2Star(idRoom));
		modelMap.put("onestar", guestRatingService.count1Star(idRoom));

//		Random generator = new Random();
//		detailBill.setIdBill("CASH"+generator.nextInt());
		return "users/customer/invoice_cash";
		
	}
	
	
	@RequestMapping(value = "add-reservation", method = RequestMethod.POST )
	public String addReservation(@ModelAttribute("reservation") Reservation reservation,ModelMap modelMap) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		System.out.println("GEtcheckIn : " + 	getCheckIn());
		System.out.println("checkOut : " + getCheckOut());
		System.out.println("name : " + getName());
		System.out.println("phone : " + getPhone());
		System.out.println("adult : " + getAdult());
		System.out.println("children : " + getChildren());
		System.out.println("email : " + getEmail());
		try {
			Date checkIn = simpleDateFormat.parse(getCheckIn());
			Date checkOut = simpleDateFormat.parse(getCheckOut());
			reservation.setCheckIn(checkIn);
			reservation.setCheckOut(checkOut);
			reservation.setName(getName());
			reservation.setEmail(getEmail());
			reservation.setPhone(getPhone());
			reservation.setAdult(getAdult());
			reservation.setChildren(getChildren());
			reservation.setStatus(false);
			reservation.setStatusCancel(false);
			reservation.setPaymentStatus(false);
			reservation.setCreated(new Date());
			reservation.setUpdated(new Date());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		reservationService.save(reservation);
		
		return "redirect:/customer/invoice-detail?idReservation=" + reservation.getIdReservation();
		
	}
	

	
	@RequestMapping(value = "invoice-idRoom/{idRoom}", method = RequestMethod.GET)
	public String invoiceIdRoom(@PathVariable("idRoom") int idRoom,Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		Account account = accountService.findByUsername2(name);
		modelMap.put("account", account);
		modelMap.put("invoiceCount", reservationService.countInvoice(account.getIdAcc()));
		modelMap.put("datenow", new Date());
		modelMap.put("reservationEnterpriseConfirms", reservationService.reservationEnterpriseByIdRoom(idRoom));
		return "users/csutomer/invoice"; 
	}
	
	@RequestMapping(value = "room-management", method = RequestMethod.GET)
	public String roomManagement(Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		Account account = accountService.findByUsername2(name);
		modelMap.put("account", account);
		modelMap.put("reservationOfCustomer", reservationService.reservationOfCustomer(account.getIdAcc()));
		modelMap.put("datenow", new Date());
		
		

		modelMap.put("guestRatings", guestRatingService.findRatingRoomById(account.getIdAcc()));
		
		return "users/customer/room_management";
	}

	
	
	@RequestMapping(value = "invoice/{idAcc}", method = RequestMethod.GET)
	public String invoice(@PathVariable("idAcc") String idAcc,Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		
		modelMap.put("accounts", accountService.findByUsername(name));
		modelMap.put("invoiceWaits", reservationService.invoiceCustomer(idAcc));
		Account account = accountService.findByUsername2(name);

		modelMap.put("invoiceCount", reservationService.countInvoiceCustomer(account.getIdAcc()));
		modelMap.put("invoiceCancel", reservationService.invoiceCustomerCancel(idAcc));
		modelMap.put("invoiceConfirm", reservationService.invoiceCustomerConfirm(idAcc));
		return "users/customer/invoice"; 
	}
	
	@RequestMapping(value = "invoice-detail", method = RequestMethod.GET)
	public String invoiceDetail(@RequestParam("idReservation")int idReservation,Authentication authentication,ModelMap modelMap) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		Account account =accountService.findByUsername2(name);
		modelMap.put("accounts", accountService.findByUsername(name));
		modelMap.put("invoices", reservationService.reserInfo(idReservation));
		ReservationCancel reservationCancel = new ReservationCancel();
		modelMap.put("reservationCancel", reservationCancel);
		System.out.println("get IdCancel " + getIdCancel());
		modelMap.put("idCancel", getIdCancel());
		ReservationCancel reservationCancelByWho = reservationCancelService.existCancelled(idReservation);
		modelMap.put("cancelledBy", reservationCancelByWho);
		GuestRating guestRating = new GuestRating();
		modelMap.put("guestRating", guestRating);
		modelMap.put("ratingStar", guestRatingService.findRatingRoomByIdCus(idReservation, account.getIdAcc()));
		return "users/customer/invoice_detail"; 
	}
	
	@RequestMapping(value = "booking-again/{idCancel}", method = RequestMethod.GET)
	public String bookingAgain(@PathVariable("idCancel") int idCancel) {
		Reservation reservation = reservationService.reserInfo2(getIdReservation());
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
		reservation.setStatusCancel(false);
		reservation.setPaymentStatus(false);
		reservation.setUpdated(new Date());
		reservationService.save(reservation);
		reservationCancelService.delete(idCancel);
		return "redirect:/customer/invoice-detail?idReservation=" + reservation.getIdReservation();
	}
	
	
	@RequestMapping(value = "add-reservation-cancel", method = RequestMethod.POST )
	public String addReservationCancel(@ModelAttribute("reservationCancel") ReservationCancel reservationCancel,ModelMap modelMap) {
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
		modelMap.put("idCancel", reservationCancel.getIdCancel());
		setIdCancel(reservationCancel.getIdCancel());
		setIdReservation(reservation.getIdReservation());
		return "redirect:/customer/invoice-detail?idReservation=" + reservation.getIdReservation();
		
	}
	
	
	
	@RequestMapping(value = "add-guest-rating", method = RequestMethod.POST )
	public String addGuestRating(@ModelAttribute("guestRating") GuestRating guestRating,ModelMap modelMap,Authentication authentication) {
		System.out.println("username " + authentication.getName());
		String name = authentication.getName();
		
		Account account = accountService.findByUsername2(name);
		guestRating.setIdCustomer(account.getIdAcc());
		guestRating.setStatus(true);
		guestRating.setCreated(new Date());
		guestRatingService.save(guestRating);
		
		
		return "redirect:/customer/room-management";
		
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
