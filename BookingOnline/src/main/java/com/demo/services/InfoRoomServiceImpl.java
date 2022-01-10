package com.demo.services;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.models.InfoRoom;
import com.demo.repositories.InfoRoomRepository;

@Service
public class InfoRoomServiceImpl implements InfoRoomService{

	@Autowired
	private InfoRoomRepository infoRoomRepository;

	

	@Override
	public Iterable<InfoRoom> findAll() {
		return infoRoomRepository.findAll();
	}
	
	@Override
	public List<InfoRoom> search(Date checkin, Date checkout, int children) {
		return infoRoomRepository.search(checkin, checkout, children);
	}

	@Override
	public InfoRoom find(int id) {
		return infoRoomRepository.findById(id).get();
	}
	
}
