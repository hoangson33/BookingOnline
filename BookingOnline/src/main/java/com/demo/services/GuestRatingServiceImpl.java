package com.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.models.Account;
import com.demo.models.GuestRating;
import com.demo.models.Roles;
import com.demo.repositories.GuestRatingRepository;
import com.demo.repositories.RegistrationRepository;
import com.demo.repositories.RoleRepository;



@Service
public class GuestRatingServiceImpl implements GuestRatingService {
	
	@Autowired
	private GuestRatingRepository guestRatingRepository;

	@Override
	public GuestRating save(GuestRating guestRating) {
		return guestRatingRepository.save(guestRating);
	}

	@Override
	public GuestRating findRatingRoomByIdCus(int idReservation, String idCustomer) {
		return guestRatingRepository.findRatingRoomByIdCus(idReservation, idCustomer);
	}

	@Override
	public int count5Star(int idRoom) {
		return guestRatingRepository.count5Star(idRoom);
	}

	@Override
	public int count4Star(int idRoom) {
		return guestRatingRepository.count4Star(idRoom);
	}

	@Override
	public int count3Star(int idRoom) {
		return guestRatingRepository.count3Star(idRoom);
	}

	@Override
	public int count2Star(int idRoom) {
		return guestRatingRepository.count2Star(idRoom);
	}

	@Override
	public int count1Star(int idRoom) {
		return guestRatingRepository.count1Star(idRoom);
	}

	@Override
	public Iterable<GuestRating> findRatingRoomById(String idCustomer) {
		return guestRatingRepository.findRatingRoomById(idCustomer);
	}

	@Override
	public GuestRating findRatingRoomByIdRoom(int idReservation, int idRoom) {
		return guestRatingRepository.findRatingRoomByIdRoom(idReservation, idRoom);
	}
	
	

	
	
	

}
