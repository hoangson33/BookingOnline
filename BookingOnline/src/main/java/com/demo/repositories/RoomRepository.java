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
	public InfoRoom roomInfo(@Param("idRoom") int idRoom);
	
	@Query("from InfoRoom where account.idAcc = :idAcc")
	public Iterable<InfoRoom> findRoomOfAcc(@Param("idAcc") String idAcc);

	
	@Query("from InfoRoom where checkIn = :checkIn and checkOut = :checkOut and guestChildren = :guestChildren")
	public List<InfoRoom> search(@Param("checkIn") Date checkIn, @Param("checkOut") Date checkOut, @Param("guestChildren") int guestChildren);

}
