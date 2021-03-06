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
	
	@Query("from Reservation where customerId = :customerId and status = false and statusCancel = false order by updated DESC")
	public Iterable<Reservation> invoiceCustomer(@Param("customerId") String customerId);
	
	@Query("from Reservation where customerId = :customerId and statusCancel = true order by updated DESC")
	public Iterable<Reservation> invoiceCustomerCancel(@Param("customerId") String customerId);
	
	@Query("from Reservation where customerId = :customerId and statusCancel = false and status = true order by updated DESC")
	public Iterable<Reservation> invoiceCustomerConfirm(@Param("customerId") String customerId);
	
	@Query("from Reservation where infoRoom.account.idAcc = :idAcc and status = false and statusCancel = false order by updated DESC")
	public Iterable<Reservation> invoiceEnterprise(@Param("idAcc") String idAcc);
	//new
	@Query("from Reservation where infoRoom.idRoom = :idRoom order by updated DESC")
	public Iterable<Reservation> reservationEnterpriseByIdRoom(@Param("idRoom") int idRoom);
	@Query("from Reservation where customerId = :customerId order by updated DESC")
	public Iterable<Reservation> reservationOfCustomer(@Param("customerId") String customerId);
	//
	@Query("from Reservation where infoRoom.account.idAcc = :idAcc and statusCancel = true order by updated DESC")
	public Iterable<Reservation> invoiceEnterpriseCancel(@Param("idAcc") String idAcc);
	
	@Query("from Reservation where infoRoom.account.idAcc = :idAcc and statusCancel = false and status = true order by updated DESC")
	public Iterable<Reservation> invoiceEnterpriseConfirm(@Param("idAcc") String idAcc);
	
	@Query("select COUNT(*) from Reservation where infoRoom.account.idAcc = :idAcc and status = false and statusCancel = false")
	public int countInvoice(@Param("idAcc") String idAcc);
	
	@Query("select COUNT(*) from Reservation where infoRoom.idRoom = :idRoom")
	public int countRoom(@Param("idRoom") int idRoom);
	
	@Query("select COUNT(*) from Reservation where customerId = :customerId and status = false and statusCancel = false")
	public int countInvoiceCustomer(@Param("customerId") String customerId);
	
	
	@Query("select SUM(infoRoom.total) from Reservation where paymentStatus = true")
	public int totalInRoom();
	
//	@Query("select SUM(total) from Reservation where customerId = :customerId")
//	public int totalOfCustomer(@Param("customerId") String customerId);
	
	
	@Query("select SUM(total) from Reservation where infoRoom.idRoom = :idRoom")
	public int totalOfRoom(@Param("idRoom") int idRoom);
	
	@Query("from Reservation where paymentStatus = true")
	public Iterable<Reservation> allRoomPaymentCompleted();
	
	@Query("from Reservation where customerId = :customerId")
	public Iterable<Reservation> reserInfoidAcc(@Param("customerId") String customerId);
	
	
	@Query("from Reservation where idReservation = :idReservation")
	public Reservation roomInfoByIdReser(@Param("idReservation") int idReservation);
	
	
	@Transactional
	@Modifying
	@Query("delete from Reservation where idReservation =:idReservation")
	public void deleteById(@Param("idReservation") int idReservation);
}
