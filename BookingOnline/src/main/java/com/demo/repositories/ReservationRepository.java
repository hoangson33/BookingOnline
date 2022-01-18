package com.demo.repositories;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demo.models.Account;
import com.demo.models.InfoRoom;
import com.demo.models.Reservation;

@Repository
public interface ReservationRepository extends CrudRepository<Reservation, Integer>{
	
	@Query("from Reservation where idReservation = :idReservation")
	public Iterable<Reservation> reserInfo(@Param("idReservation") int idReservation);
	
	@Query("from Reservation where idReservation = :idReservation")
	public Reservation reserInfo2(@Param("idReservation") int idReservation);
	
	@Query("from Reservation where customerId = :customerId order by idReservation DESC")
	public Iterable<Reservation> invoiceCustomer(@Param("customerId") String customerId);
	
}
