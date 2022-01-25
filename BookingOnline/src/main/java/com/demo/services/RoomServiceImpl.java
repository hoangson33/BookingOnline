package com.demo.services;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.stereotype.Service;

import com.demo.models.InfoRoom;
import com.demo.repositories.RoomRepository;

import net.bytebuddy.asm.Advice.Return;

@Service
public class RoomServiceImpl implements RoomService {
	
	@Autowired
	private RoomRepository roomRepository;

	@Override
	public Iterable<InfoRoom> findAllRoom() {
		return roomRepository.findAllRoom();
	}

	@Override
	public Iterable<InfoRoom> findRoomApproval() {
		return roomRepository.findRoomApproval();
	}

	@Override
	public InfoRoom save(InfoRoom infoRoom) {
		return roomRepository.save(infoRoom);
	}

	@Override
	public void deleteById(int id) {
		roomRepository.deleteById(id);
	}

	@Override
	public String findAccId(int idRoom) {
		return roomRepository.findAccId(idRoom);
	}

	@Override
	public InfoRoom roomInfoByIdRoom(int idRoom) {
		return roomRepository.roomInfoByIdRoom(idRoom);
	}

	@Override
	public Iterable<InfoRoom> findRoomTrueOfAcc(String idAcc) {
		return roomRepository.findRoomTrueOfAcc(idAcc);
	}

	@Override
	public InfoRoom find(int id) {
		return roomRepository.findById(id).get();
	}

	@Override
	public List<InfoRoom> search(String city,String checkin, String checkout, int guestChildren, int guestAdult) {
		try {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			
			Date CheckIn = simpleDateFormat.parse(checkin);
			System.out.println("Service checkIn" + CheckIn);
			Date CheckOut = simpleDateFormat.parse(checkout);
			System.out.println("Service checkOut" + CheckOut);
			return roomRepository.search(city,CheckIn, CheckOut, guestChildren,guestAdult);
		} catch (ParseException e) {
			return null;
		}
		
		
	}
	


	@Override
	public Iterable<InfoRoom> findRoomFalseOfAcc(String idAcc) {
		return roomRepository.findRoomFalseOfAcc(idAcc);
	}

	@Override
	public Iterable<InfoRoom> roomInfoByIdAcc(String idAcc) {
		return roomRepository.roomInfoByIdAcc(idAcc);
	}

	@Override
	public List<InfoRoom> roomInfoByIdRoomPaypal(int idRoom) {
		return roomRepository.roomInfoByIdRoomPaypal(idRoom);
	}

	@Override
	public Iterable<InfoRoom> popupalRoom(String city) {
		return roomRepository.popupalRoom(city);
	}

	@Override
	public Iterable<InfoRoom> roomInfoByIdAccAll(String idAcc) {
		return roomRepository.roomInfoByIdAccAll(idAcc);
	}

	@Override
	public Iterable<InfoRoom> reserInfoidAccEnter(String idAcc) {
		// TODO Auto-generated method stub
		return roomRepository.reserInfoidAccEnter(idAcc);
	}

	@Override
	public Iterable<InfoRoom> roomInfoOfIdAcc(String idAcc) {
		return roomRepository.roomInfoByIdAcc(idAcc);
	}

	@Override
	public int countRoomWaitApproval() {
		return roomRepository.countRoomWaitApproval();
	}








}
