package com.demo.models;
// Generated Jan 13, 2022, 2:59:49 PM by Hibernate Tools 5.1.10.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * Roles generated by hbm2java
 */
@Entity
@Table(name = "roles", catalog = "booking_hotel")
public class Roles implements java.io.Serializable {

	private Integer idRole;
	private String nameRole;
	private Set<Account> accounts = new HashSet<Account>(0);

	public Roles() {
	}

	public Roles(String nameRole) {
		this.nameRole = nameRole;
	}

	public Roles(String nameRole, Set<Account> accounts) {
		this.nameRole = nameRole;
		this.accounts = accounts;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id_role", unique = true, nullable = false)
	public Integer getIdRole() {
		return this.idRole;
	}

	public void setIdRole(Integer idRole) {
		this.idRole = idRole;
	}

	@Column(name = "name_role", nullable = false, length = 250)
	public String getNameRole() {
		return this.nameRole;
	}

	public void setNameRole(String nameRole) {
		this.nameRole = nameRole;
	}

	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "roleses")
	public Set<Account> getAccounts() {
		return this.accounts;
	}

	public void setAccounts(Set<Account> accounts) {
		this.accounts = accounts;
	}

}
