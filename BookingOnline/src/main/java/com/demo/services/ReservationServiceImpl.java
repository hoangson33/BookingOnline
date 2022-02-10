package com.demo.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.demo.models.Account;
import com.demo.models.InfoRoom;
import com.demo.models.Reservation;
import com.demo.models.Roles;
import com.demo.repositories.AccountRepository;
import com.demo.repositories.ReservationRepository;
import com.demo.repositories.RoomRepository;

@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	private ReservationRepository reservationRepository;

	@Override
	public Reservation save(Reservation reservation) {
		return reservationRepository.save(reservation);
	}

	@Override
	public Iterable<Reservation> reserInfo(int idReservation) {
		return reservationRepository.reserInfo(idReservation);
	}

	@Override
	public Reservation find(int id) {
		return reservationRepository.findById(id).get();
	}
	
	@Override
	public void delete(int id) {
		reservationRepository.deleteById(id);
	}

	@Override
	public Iterable<Reservation> invoiceCustomer(String customerId) {
		return reservationRepository.invoiceCustomer(customerId);
	}

	@Override
	public Reservation reserInfo2(int idReservation) {
		return reservationRepository.reserInfo2(idReservation);
	}

	@Override
	public int countInvoice(String idAcc) {
		return reservationRepository.countInvoice(idAcc);
	}

	@Override
	public Iterable<Reservation> invoiceEnterprise(String idAcc) {
		return reservationRepository.invoiceEnterprise(idAcc);
	}

	@Override
	public Iterable<Reservation> invoiceEnterpriseCancel(String idAcc) {
		return reservationRepository.invoiceEnterpriseCancel(idAcc);
	}

	@Override
	public Iterable<Reservation> invoiceEnterpriseConfirm(String idAcc) {
		return reservationRepository.invoiceEnterpriseConfirm(idAcc);
	}

	@Override
	public Iterable<Reservation> invoiceCustomerCancel(String customerId) {
		return reservationRepository.invoiceCustomerCancel(customerId);
	}

	@Override
	public Iterable<Reservation> invoiceCustomerConfirm(String customerId) {
		return reservationRepository.invoiceCustomerConfirm(customerId);
	}

	@Override
	public int countInvoiceCustomer(String customerId) {
		return reservationRepository.countInvoiceCustomer(customerId);
	}

	@Override
	public Iterable<Reservation> reservationEnterpriseByIdRoom(int idRoom) {
		return reservationRepository.reservationEnterpriseByIdRoom(idRoom);
	}

	@Override
	public Iterable<Reservation> findAll() {
		return reservationRepository.findAll();
	}

	@Override
	public int countRoom(int idRoom) {
		return reservationRepository.countRoom(idRoom);
	}

	@Override
	public Iterable<Reservation> reservationOfCustomer(String customerId) {
		return reservationRepository.reservationOfCustomer(customerId);
	}

	@Override
	public int totalInRoom() {
		return reservationRepository.totalInRoom();
	}

	@Override
	public Iterable<Reservation> allRoomPaymentCompleted() {
		return reservationRepository.allRoomPaymentCompleted();
	}

	@Override
	public Iterable<Reservation> reserInfoidAcc(String customerId) {
		// TODO Auto-generated method stub
		return reservationRepository.reserInfoidAcc(customerId);
	}

	@Override
	public Reservation roomInfoByIdReser(int idReservation) {
		
		return reservationRepository.roomInfoByIdReser(idReservation);
	}

	@Override
	public void deleteById(int id) {
		reservationRepository.deleteById(id);
		
	}

//	@Override
//	public int totalOfCustomer(String customerId) {
//		return reservationRepository.totalOfCustomer(customerId);
//	}

	@Override
	public int totalOfRoom(int idRoom) {
		return reservationRepository.totalOfRoom(idRoom);
	}



	

	


}
