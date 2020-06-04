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
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@Table(name = "users")
public class Users {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "username")
	private String username;
	
	@Column(name = "password")
	private String password;
	
	@Column(name = "enabled")
	private int enabled;
	
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "NguoiDungCTID")
	private NguoiDungCT nguoiDungCT;
	
	
	@ManyToMany(fetch = FetchType.LAZY,
			cascade = {CascadeType.DETACH,CascadeType.MERGE,
					CascadeType.REFRESH})
	@JoinTable(
			name = "users_authorities",
			joinColumns = @JoinColumn(name="id_users"),
			inverseJoinColumns = @JoinColumn(name="id_authorities")
			)
	@JsonIgnore
	private List<Authorities> listAuthorities;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public int getEnabled() {
		return enabled;
	}


	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}


	public NguoiDungCT getNguoiDungCT() {
		return nguoiDungCT;
	}


	public void setNguoiDungCT(NguoiDungCT nguoiDungCT) {
		this.nguoiDungCT = nguoiDungCT;
	}


	public List<Authorities> getListAuthorities() {
		return listAuthorities;
	}


	public void setListAuthorities(List<Authorities> listAuthorities) {
		this.listAuthorities = listAuthorities;
	}


	public Users(int id, String username, String password, int enabled, NguoiDungCT nguoiDungCT,
			List<Authorities> listAuthorities) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.enabled = enabled;
		this.nguoiDungCT = nguoiDungCT;
		this.listAuthorities = listAuthorities;
	}


	public Users() {
	}
	
	
	
}
