package com.demo.services;


import org.springframework.data.repository.query.Param;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.demo.models.Account;
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
	
	public Iterable<Reservation> invoiceEnterprise(String idAcc);
	
	public Iterable<Reservation> invoiceEnterpriseCancel(String idAcc);
	
	public Iterable<Reservation> invoiceEnterpriseConfirm(String idAcc);
	
	public int countInvoice(String idAcc);
	
	
}
