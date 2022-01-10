package com.demo.services;


import java.util.Date;
import java.util.List;

import org.springframework.data.repository.query.Param;

import com.demo.models.Account;
import com.demo.models.InfoRoom;

public interface RoomService {
	
	public Iterable<InfoRoom> findAllRoom();
	
	public Iterable<InfoRoom> findRoomApproval();
	
	public InfoRoom save(InfoRoom infoRoom);
	
	public void delete(int id);
	
	public Iterable<InfoRoom> findRoomOfAcc(String idAcc);
	
	public String findAccId(int idRoom);
	
	public InfoRoom roomInfo(int idRoom);

	public InfoRoom find(int id);
	
	public List<InfoRoom> search(Date checkin , Date checkout , int children);
}
