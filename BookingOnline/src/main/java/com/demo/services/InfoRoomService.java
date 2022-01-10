package com.demo.services;

import java.util.Date;
import java.util.List;

import com.demo.models.InfoRoom;
import com.demo.models.Roles;


public interface InfoRoomService {
	public List<InfoRoom> search(Date checkin , Date checkout , int children);
	
	
	public Iterable<InfoRoom> findAll();
	
	public InfoRoom find(int id);
}
