package com.demo.models;
// Generated Jan 23, 2022, 7:03:38 PM by Hibernate Tools 5.1.10.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Reservation generated by hbm2java
 */
@Entity
@Table(name = "reservation", catalog = "booking_hotel")
public class Reservation implements java.io.Serializable {

	private Integer idReservation;
	private InfoRoom infoRoom;
	private String customerId;
	private Date checkIn;
	private Date checkOut;
	private String name;
	private String email;
	private int phone;
	private int adult;
	private int children;
	private boolean status;
	private boolean statusCancel;
	private boolean paymentStatus;
	private Date created;
	private Date updated;
	private Set<ReservationCancel> reservationCancels = new HashSet<ReservationCancel>(0);
	private Set<DetailBill> detailBills = new HashSet<DetailBill>(0);

	public Reservation() {
	}

	public Reservation(InfoRoom infoRoom, String customerId, Date checkIn, Date checkOut, String name, String email,
			int phone, int adult, int children, boolean status, boolean statusCancel, boolean paymentStatus,
			Date created, Date updated) {
		this.infoRoom = infoRoom;
		this.customerId = customerId;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.adult = adult;
		this.children = children;
		this.status = status;
		this.statusCancel = statusCancel;
		this.paymentStatus = paymentStatus;
		this.created = created;
		this.updated = updated;
	}

	public Reservation(InfoRoom infoRoom, String customerId, Date checkIn, Date checkOut, String name, String email,
			int phone, int adult, int children, boolean status, boolean statusCancel, boolean paymentStatus,
			Date created, Date updated, Set<ReservationCancel> reservationCancels, Set<DetailBill> detailBills) {
		this.infoRoom = infoRoom;
		this.customerId = customerId;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.adult = adult;
		this.children = children;
		this.status = status;
		this.statusCancel = statusCancel;
		this.paymentStatus = paymentStatus;
		this.created = created;
		this.updated = updated;
		this.reservationCancels = reservationCancels;
		this.detailBills = detailBills;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id_reservation", unique = true, nullable = false)
	public Integer getIdReservation() {
		return this.idReservation;
	}

	public void setIdReservation(Integer idReservation) {
		this.idReservation = idReservation;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "room_id", nullable = false)
	public InfoRoom getInfoRoom() {
		return this.infoRoom;
	}

	public void setInfoRoom(InfoRoom infoRoom) {
		this.infoRoom = infoRoom;
	}

	@Column(name = "customer_id", nullable = false, length = 250)
	public String getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "check_in", nullable = false, length = 10)
	public Date getCheckIn() {
		return this.checkIn;
	}

	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "check_out", nullable = false, length = 10)
	public Date getCheckOut() {
		return this.checkOut;
	}

	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}

	@Column(name = "name", nullable = false, length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "email", nullable = false, length = 250)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "phone", nullable = false)
	public int getPhone() {
		return this.phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	@Column(name = "adult", nullable = false)
	public int getAdult() {
		return this.adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}

	@Column(name = "children", nullable = false)
	public int getChildren() {
		return this.children;
	}

	public void setChildren(int children) {
		this.children = children;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Column(name = "status_cancel", nullable = false)
	public boolean isStatusCancel() {
		return this.statusCancel;
	}

	public void setStatusCancel(boolean statusCancel) {
		this.statusCancel = statusCancel;
	}

	@Column(name = "payment_status", nullable = false)
	public boolean isPaymentStatus() {
		return this.paymentStatus;
	}

	public void setPaymentStatus(boolean paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "created", nullable = false, length = 10)
	public Date getCreated() {
		return this.created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "updated", nullable = false, length = 10)
	public Date getUpdated() {
		return this.updated;
	}

	public void setUpdated(Date updated) {
		this.updated = updated;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "reservation")
	public Set<ReservationCancel> getReservationCancels() {
		return this.reservationCancels;
	}

	public void setReservationCancels(Set<ReservationCancel> reservationCancels) {
		this.reservationCancels = reservationCancels;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "reservation")
	public Set<DetailBill> getDetailBills() {
		return this.detailBills;
	}

	public void setDetailBills(Set<DetailBill> detailBills) {
		this.detailBills = detailBills;
	}

}
