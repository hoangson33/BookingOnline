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
	
	public void deleteById(int id);
	
	public Iterable<InfoRoom> findRoomTrueOfAcc(String idAcc);
	
	public Iterable<InfoRoom> findRoomFalseOfAcc(String idAcc);
	
	public String findAccId(int idRoom);
	
	public InfoRoom roomInfoByIdRoom(int idRoom);
	
	public List<InfoRoom> roomInfoByIdRoomPaypal(int idRoom);
	
	
	public Iterable<InfoRoom> roomInfoByIdAcc(String idAcc);

	public InfoRoom find(int id);
	
	
	public Iterable<InfoRoom> roomInfoOfIdAcc(String idAcc);
	
	public List<InfoRoom> search(String city,String checkin , String checkout , int guestChildren, int guestAdult);
	
	
	public Iterable<InfoRoom> popupalRoom(String city);
	
	
	public Iterable<InfoRoom> roomInfoByIdAccAll(String idAcc);
	
	public Iterable<InfoRoom> reserInfoidAccEnter( String idAcc);
	
	public int countRoomWaitApproval();
	
	public InfoRoom findIdRoom( int idRoom);
	
	
	public Iterable<InfoRoom> idRoomByIdAcc(String idAcc);
}
