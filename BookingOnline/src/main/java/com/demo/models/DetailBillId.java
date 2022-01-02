package com.demo.models;
// Generated Jan 1, 2022, 12:13:20 AM by Hibernate Tools 5.1.10.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * DetailBillId generated by hbm2java
 */
@Embeddable
public class DetailBillId implements java.io.Serializable {

	private String idBill;
	private int idRoom;
	private String accountIdHotel;
	private String accountIdCustomer;
	private String payerName;
	private int payerPhone;
	private String payerEmail;
	private String typePay;
	private double totalMoney;
	private Date created;
	private boolean status;

	public DetailBillId() {
	}

	public DetailBillId(String idBill, int idRoom, String accountIdHotel, String accountIdCustomer, String payerName,
			int payerPhone, String payerEmail, String typePay, double totalMoney, Date created, boolean status) {
		this.idBill = idBill;
		this.idRoom = idRoom;
		this.accountIdHotel = accountIdHotel;
		this.accountIdCustomer = accountIdCustomer;
		this.payerName = payerName;
		this.payerPhone = payerPhone;
		this.payerEmail = payerEmail;
		this.typePay = typePay;
		this.totalMoney = totalMoney;
		this.created = created;
		this.status = status;
	}

	@Column(name = "id_bill", nullable = false, length = 250)
	public String getIdBill() {
		return this.idBill;
	}

	public void setIdBill(String idBill) {
		this.idBill = idBill;
	}

	@Column(name = "id_room", nullable = false)
	public int getIdRoom() {
		return this.idRoom;
	}

	public void setIdRoom(int idRoom) {
		this.idRoom = idRoom;
	}

	@Column(name = "account_id_hotel", nullable = false, length = 250)
	public String getAccountIdHotel() {
		return this.accountIdHotel;
	}

	public void setAccountIdHotel(String accountIdHotel) {
		this.accountIdHotel = accountIdHotel;
	}

	@Column(name = "account_id_customer", nullable = false, length = 250)
	public String getAccountIdCustomer() {
		return this.accountIdCustomer;
	}

	public void setAccountIdCustomer(String accountIdCustomer) {
		this.accountIdCustomer = accountIdCustomer;
	}

	@Column(name = "payer_name", nullable = false, length = 250)
	public String getPayerName() {
		return this.payerName;
	}

	public void setPayerName(String payerName) {
		this.payerName = payerName;
	}

	@Column(name = "payer_phone", nullable = false)
	public int getPayerPhone() {
		return this.payerPhone;
	}

	public void setPayerPhone(int payerPhone) {
		this.payerPhone = payerPhone;
	}

	@Column(name = "payer_email", nullable = false, length = 250)
	public String getPayerEmail() {
		return this.payerEmail;
	}

	public void setPayerEmail(String payerEmail) {
		this.payerEmail = payerEmail;
	}

	@Column(name = "type_pay", nullable = false, length = 50)
	public String getTypePay() {
		return this.typePay;
	}

	public void setTypePay(String typePay) {
		this.typePay = typePay;
	}

	@Column(name = "total_money", nullable = false, precision = 22, scale = 0)
	public double getTotalMoney() {
		return this.totalMoney;
	}

	public void setTotalMoney(double totalMoney) {
		this.totalMoney = totalMoney;
	}

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

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof DetailBillId))
			return false;
		DetailBillId castOther = (DetailBillId) other;

		return ((this.getIdBill() == castOther.getIdBill()) || (this.getIdBill() != null
				&& castOther.getIdBill() != null && this.getIdBill().equals(castOther.getIdBill())))
				&& (this.getIdRoom() == castOther.getIdRoom())
				&& ((this.getAccountIdHotel() == castOther.getAccountIdHotel())
						|| (this.getAccountIdHotel() != null && castOther.getAccountIdHotel() != null
								&& this.getAccountIdHotel().equals(castOther.getAccountIdHotel())))
				&& ((this.getAccountIdCustomer() == castOther.getAccountIdCustomer())
						|| (this.getAccountIdCustomer() != null && castOther.getAccountIdCustomer() != null
								&& this.getAccountIdCustomer().equals(castOther.getAccountIdCustomer())))
				&& ((this.getPayerName() == castOther.getPayerName()) || (this.getPayerName() != null
						&& castOther.getPayerName() != null && this.getPayerName().equals(castOther.getPayerName())))
				&& (this.getPayerPhone() == castOther.getPayerPhone())
				&& ((this.getPayerEmail() == castOther.getPayerEmail()) || (this.getPayerEmail() != null
						&& castOther.getPayerEmail() != null && this.getPayerEmail().equals(castOther.getPayerEmail())))
				&& ((this.getTypePay() == castOther.getTypePay()) || (this.getTypePay() != null
						&& castOther.getTypePay() != null && this.getTypePay().equals(castOther.getTypePay())))
				&& (this.getTotalMoney() == castOther.getTotalMoney())
				&& ((this.getCreated() == castOther.getCreated()) || (this.getCreated() != null
						&& castOther.getCreated() != null && this.getCreated().equals(castOther.getCreated())))
				&& (this.isStatus() == castOther.isStatus());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getIdBill() == null ? 0 : this.getIdBill().hashCode());
		result = 37 * result + this.getIdRoom();
		result = 37 * result + (getAccountIdHotel() == null ? 0 : this.getAccountIdHotel().hashCode());
		result = 37 * result + (getAccountIdCustomer() == null ? 0 : this.getAccountIdCustomer().hashCode());
		result = 37 * result + (getPayerName() == null ? 0 : this.getPayerName().hashCode());
		result = 37 * result + this.getPayerPhone();
		result = 37 * result + (getPayerEmail() == null ? 0 : this.getPayerEmail().hashCode());
		result = 37 * result + (getTypePay() == null ? 0 : this.getTypePay().hashCode());
		result = 37 * result + (int) this.getTotalMoney();
		result = 37 * result + (getCreated() == null ? 0 : this.getCreated().hashCode());
		result = 37 * result + (this.isStatus() ? 1 : 0);
		return result;
	}

}