	package com.demo.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.Account;
import com.demo.models.InfoRoom;

@Repository
public interface RoomRepository extends CrudRepository<InfoRoom, Integer>{
	@Query("from InfoRoom where status = false")
	public Iterable<InfoRoom> findRoomApproval();
	
	@Query("from InfoRoom where status = true")
	public Iterable<InfoRoom> findAllRoom();
	


	
	@Query("select account.idAcc from InfoRoom where idRoom = :idRoom")
	public String findAccId(@Param("idRoom") int idRoom);
	
	@Query("from InfoRoom where idRoom = :idRoom")
	public InfoRoom roomInfoByIdRoom(@Param("idRoom") int idRoom);
	
	@Query("from InfoRoom where idRoom = :idRoom")
	public List<InfoRoom> roomInfoByIdRoomPaypal(@Param("idRoom") int idRoom);
	
	@Query("from InfoRoom where account.idAcc = :idAcc and status = true")
	public Iterable<InfoRoom> roomInfoByIdAcc(@Param("idAcc") String idAcc);
	
	@Query("from InfoRoom where account.idAcc = :idAcc")
	public Iterable<InfoRoom> roomInfoByIdAccAll(@Param("idAcc") String idAcc);
	
	@Query("from InfoRoom where account.idAcc = :idAcc and status = true")
	public Iterable<InfoRoom> findRoomTrueOfAcc(@Param("idAcc") String idAcc);
	
	@Query("from InfoRoom where account.idAcc = :idAcc and status = false")
	public Iterable<InfoRoom> findRoomFalseOfAcc(@Param("idAcc") String idAcc);

	
	@Query("from InfoRoom where account.location like %:city% and checkIn >= :checkIn and checkOut <= :checkOut and guestChildren >= :guestChildren and guestAdult <= :guestAdult and status = true")
	public List<InfoRoom> search(@Param("city") String city,@Param("checkIn") Date checkIn, @Param("checkOut") Date checkOut, @Param("guestChildren") int guestChildren , @Param("guestAdult") int guestAdult);
	
	@Query("from InfoRoom where account.location like %:city% and status = true")
	public Iterable<InfoRoom> popupalRoom(@Param("city") String city);
	
	@Query("from InfoRoom where created >= :startDate and created <= :endDate")
	public List<InfoRoom> searchDate(@Param("startDate") Date startDate,@Param("endDate") Date endDate);

}
