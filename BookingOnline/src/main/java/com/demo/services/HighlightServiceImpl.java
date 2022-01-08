package com.demo.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.models.Highlight;
import com.demo.models.InfoRoom;
import com.demo.repositories.HighlightRepository;
import com.demo.repositories.RoomRepository;

@Service
public class HighlightServiceImpl implements HighlightService {
	
	@Autowired
	private HighlightRepository highlightRepository;

	@Override
	public Iterable<Highlight> findAllHighLight() {
			
			return highlightRepository.findAll();
	}



}
