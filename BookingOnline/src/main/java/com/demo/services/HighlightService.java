package com.demo.services;


import java.util.List;

import org.springframework.data.repository.query.Param;

import com.demo.models.Account;
import com.demo.models.Highlight;
import com.demo.models.InfoRoom;

public interface HighlightService {
	
	public Iterable<Highlight> findAllHighLight();
	


	
	

}
