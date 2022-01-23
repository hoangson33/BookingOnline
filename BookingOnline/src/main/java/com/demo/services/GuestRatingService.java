package com.demo.services;

import java.util.List;

import org.springframework.data.repository.query.Param;

import com.demo.models.Account;
import com.demo.models.GuestRating;
import com.demo.models.InfoRoom;
import com.demo.models.Roles;

public interface GuestRatingService {
	

	
	public GuestRating save(GuestRating guestRating);
	public GuestRating findRatingRoomByIdCus(int idRoom,String idCustomer);
	
	public int count5Star(int idRoom);
	
	public int count4Star(int idRoom);
	
	public int count3Star(int idRoom);
	public int count2Star(int idRoom);
	public int count1Star(int idRoom);
}
