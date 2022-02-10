package com.demo.services;


import org.springframework.data.repository.query.Param;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.demo.models.Account;
import com.demo.models.InfoRoom;
import com.demo.models.Reservation;
import com.demo.models.Roles;
import com.demo.repositories.ReservationRepository;

public interface ReservationService {
	
	public Reservation save(Reservation reservation);
	
	public Iterable<Reservation> reserInfo(int idReservation);
	
	public Reservation reserInfo2(int idReservation);
	
	public Reservation find(int id);
	
	public void delete(int id);
	
	public Iterable<Reservation> invoiceCustomer(String customerId);
	
	public Iterable<Reservation> invoiceCustomerCancel(String customerId);
	
	public Iterable<Reservation> invoiceCustomerConfirm(String customerId);
	
	public Iterable<Reservation> invoiceEnterprise(String idAcc);
	
	public Iterable<Reservation> invoiceEnterpriseCancel(String idAcc);
	
	public Iterable<Reservation> invoiceEnterpriseConfirm(String idAcc);
	public Iterable<Reservation> findAll();
	
	public int countInvoice(String idAcc);
	
	public int countRoom(int idRoom);
	
	public int countInvoiceCustomer(String customerId);
	
	//new 
	public Iterable<Reservation> reservationEnterpriseByIdRoom(int idRoom);
	public Iterable<Reservation> reservationOfCustomer(String customerId);
	
	public int totalInRoom();
	public Iterable<Reservation> allRoomPaymentCompleted();
	
	public Iterable<Reservation> reserInfoidAcc(String customerId);
	
	public Reservation roomInfoByIdReser(int idReservation);
	
	public void deleteById(int id);
	
//	public int totalOfCustomer(String customerId);
	
	public int totalOfRoom(int idRoom);

}
