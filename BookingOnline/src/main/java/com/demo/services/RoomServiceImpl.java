package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.models.InfoRoom;
import com.demo.repositories.RoomRepository;

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
	public void delete(int id) {
		roomRepository.deleteById(id);
		
	}

	@Override
	public String findAccId(int idRoom) {
		return roomRepository.findAccId(idRoom);
	}

	@Override
	public InfoRoom roomInfo(int idRoom) {
		return roomRepository.roomInfo(idRoom);
	}

}
