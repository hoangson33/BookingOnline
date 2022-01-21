package com.demo.services;


import org.springframework.data.repository.query.Param;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.demo.models.Account;
import com.demo.models.Reservation;
import com.demo.models.ReservationCancel;
import com.demo.models.Roles;
import com.demo.repositories.ReservationRepository;

public interface ReservationCancelService {
	
	public ReservationCancel save(ReservationCancel reservationCancel);
	
	public ReservationCancel find(int id);
	
	public void delete(int id);
	
	public ReservationCancel existCancelled(int idReservation);
	
	public ReservationCancel existCancelledByWho(String cancelledBy);
	
	public int countCancalledCustomer(String customerId);
	
	
}
