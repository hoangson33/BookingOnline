package com.demo.models;
// Generated Jan 23, 2022, 9:05:58 PM by Hibernate Tools 5.1.10.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * GuestRating generated by hbm2java
 */
@Entity
@Table(name = "guest_rating", catalog = "booking_hotel")
public class GuestRating implements java.io.Serializable {

	private Integer idRating;
	private InfoRoom infoRoom;
	private double score;
	private String idCustomer;
	private Date created;
	private boolean status;

	public GuestRating() {
	}

	public GuestRating(InfoRoom infoRoom, double score, String idCustomer, Date created, boolean status) {
		this.infoRoom = infoRoom;
		this.score = score;
		this.idCustomer = idCustomer;
		this.created = created;
		this.status = status;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id_rating", unique = true, nullable = false)
	public Integer getIdRating() {
		return this.idRating;
	}

	public void setIdRating(Integer idRating) {
		this.idRating = idRating;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "room_id", nullable = false)
	public InfoRoom getInfoRoom() {
		return this.infoRoom;
	}

	public void setInfoRoom(InfoRoom infoRoom) {
		this.infoRoom = infoRoom;
	}

	@Column(name = "score", nullable = false, precision = 22, scale = 0)
	public double getScore() {
		return this.score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	@Column(name = "id_customer", nullable = false, length = 250)
	public String getIdCustomer() {
		return this.idCustomer;
	}

	public void setIdCustomer(String idCustomer) {
		this.idCustomer = idCustomer;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "created", nullable = false, length = 10)
	public Date getCreated() {
		return this.created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
