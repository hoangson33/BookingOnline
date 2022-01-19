package com.demo.services;


import java.util.Date;
import java.util.List;

import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.repository.query.Param;

import com.demo.models.Account;
import com.demo.models.InfoRoom;

public interface RoomService {
	
	public Iterable<InfoRoom> findAllRoom();
	
	public Iterable<InfoRoom> findRoomApproval();
	
	public InfoRoom save(InfoRoom infoRoom);
	
	public void delete(int id);
	
	public Iterable<InfoRoom> findRoomTrueOfAcc(String idAcc);
	
	public Iterable<InfoRoom> findRoomFalseOfAcc(String idAcc);
	
	public String findAccId(int idRoom);
	
	public InfoRoom roomInfoByIdRoom(int idRoom);
	
	public List<InfoRoom> roomInfoByIdRoomPaypal(int idRoom);
	
	
	public Iterable<InfoRoom> roomInfoByIdAcc(String idAcc);

	public InfoRoom find(int id);
	
	

	
	public List<InfoRoom> search(String city,String checkin , String checkout , int guestChildren, int guestAdult);
	
	
	public Iterable<InfoRoom> popupalRoom(String city);
	
	
	
}
