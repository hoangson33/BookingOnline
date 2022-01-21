package com.demo.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.demo.models.Account;
import com.demo.models.InfoRoom;
import com.demo.models.Reservation;
import com.demo.models.ReservationCancel;
import com.demo.models.Roles;
import com.demo.repositories.AccountRepository;
import com.demo.repositories.ReservationCancelRepository;
import com.demo.repositories.ReservationRepository;
import com.demo.repositories.RoomRepository;

@Service
public class ReservationCancelServiceImpl implements ReservationCancelService {
	
	@Autowired
	private ReservationCancelRepository reservationCancelRepository;

	@Override
	public ReservationCancel save(ReservationCancel reservationCancel) {
		return reservationCancelRepository.save(reservationCancel);
	}

	@Override
	public ReservationCancel find(int id) {
		return reservationCancelRepository.findById(id).get();
	}
	
	@Override
	public void delete(int id) {
		reservationCancelRepository.deleteById(id);
	}

	@Override
	public ReservationCancel existCancelled(int idReservation) {
		return reservationCancelRepository.existCancelled(idReservation);
	}

	@Override
	public ReservationCancel existCancelledByWho(String cancelledBy) {
		return reservationCancelRepository.existCancelledByWho(cancelledBy);
	}

	@Override
	public int countCancalledCustomer(String customerId) {
		return reservationCancelRepository.countCancalledCustomer(customerId);
	}



	

	


}
