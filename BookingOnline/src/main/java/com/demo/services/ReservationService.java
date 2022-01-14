package com.demo.services;


import org.springframework.data.repository.query.Param;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.demo.models.Account;
import com.demo.models.Reservation;
import com.demo.models.Roles;
import com.demo.repositories.ReservationRepository;

public interface ReservationService {
	
	public Reservation save(Reservation reservation);
	
	
}
