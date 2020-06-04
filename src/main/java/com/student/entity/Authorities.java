package com.student.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@Table(name = "authorities")
public class Authorities {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "authority")
	private String authority;
	
	@ManyToMany(fetch = FetchType.LAZY,
			cascade = {CascadeType.DETACH,CascadeType.MERGE,
					CascadeType.REFRESH})
	@JoinTable(
			name = "users_authorities",
			joinColumns = @JoinColumn(name="id_authorities"),
			inverseJoinColumns = @JoinColumn(name="id_users")
			)
	@JsonIgnore
	private List<Users> listUsers;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public List<Users> getListUsers() {
		return listUsers;
	}

	public void setListUsers(List<Users> listUsers) {
		this.listUsers = listUsers;
	}

	public Authorities(int id, String authority, List<Users> listUsers) {
		this.id = id;
		this.authority = authority;
		this.listUsers = listUsers;
	}

	public Authorities() {
	}
	
	
}
