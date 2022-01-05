package com.demo.repositories;

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

}
