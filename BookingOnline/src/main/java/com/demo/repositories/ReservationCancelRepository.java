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
import com.demo.models.ReservationCancel;

@Repository
public interface ReservationCancelRepository extends CrudRepository<ReservationCancel, Integer>{
	
	@Query("from ReservationCancel where reservation.idReservation = :idReservation")
	public ReservationCancel existCancelled(@Param("idReservation") int idReservation);
	
	@Query("from ReservationCancel where cancelledBy = :cancelledBy")
	public ReservationCancel existCancelledByWho(@Param("cancelledBy") String cancelledBy);
	
	@Query("select COUNT(*) from ReservationCancel where cancelledBy = :customerId")
	public int countCancalledCustomer(@Param("customerId") String customerId);
	
}
