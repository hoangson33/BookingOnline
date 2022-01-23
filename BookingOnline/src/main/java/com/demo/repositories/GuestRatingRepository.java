package com.demo.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.models.Account;
import com.demo.models.GuestRating;
import com.demo.models.InfoRoom;
import com.demo.models.Reservation;

@Repository
public interface GuestRatingRepository extends CrudRepository<GuestRating, Integer>{
	@Query("from GuestRating where infoRoom.idRoom = :idRoom and idCustomer = :idCustomer")
	public GuestRating findRatingRoomByIdCus(@Param("idRoom") int idRoom,@Param("idCustomer") String idCustomer);
	
	@Query("select COUNT(*) from GuestRating where infoRoom.idRoom = :idRoom and score = 5")
	public int count5Star(@Param("idRoom") int idRoom);
	
	@Query("select COUNT(*) from GuestRating where infoRoom.idRoom = :idRoom and score = 4")
	public int count4Star(@Param("idRoom") int idRoom);
	
	@Query("select COUNT(*) from GuestRating where infoRoom.idRoom = :idRoom and score = 3")
	public int count3Star(@Param("idRoom") int idRoom);
	
	@Query("select COUNT(*) from GuestRating where infoRoom.idRoom = :idRoom and score = 2")
	public int count2Star(@Param("idRoom") int idRoom);
	
	@Query("select COUNT(*) from GuestRating where infoRoom.idRoom = :idRoom and score = 1")
	public int count1Star(@Param("idRoom") int idRoom);
}
