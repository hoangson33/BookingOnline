package com.demo.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.Account;
import com.demo.models.Highlight;
import com.demo.models.InfoRoom;

@Repository
public interface HighlightRepository extends CrudRepository<Highlight, Integer>{
	

}
