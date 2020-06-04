package com.student.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "NSX")
public class NhaSanXuat {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "NSXID")
	private int id;
	
	@Column(name = "TenNSX")
	private String tenNSX;
	
	
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "nhaSanXuat",cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	@JsonIgnore
	private List<SanPham> dsSanPham;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTenNSX() {
		return tenNSX;
	}


	public void setTenNSX(String tenNSX) {
		this.tenNSX = tenNSX;
	}


	public List<SanPham> getDsSanPham() {
		return dsSanPham;
	}


	public void setDsSanPham(List<SanPham> dsSanPham) {
		this.dsSanPham = dsSanPham;
	}


	public NhaSanXuat(int id, String tenNSX, List<SanPham> dsSanPham) {
		this.id = id;
		this.tenNSX = tenNSX;
		this.dsSanPham = dsSanPham;
	}


	public NhaSanXuat() {
	}


	@Override
	public String toString() {
		return "NhaSanXuat [id=" + id + ", tenNSX=" + tenNSX + ", dsSanPham=" + dsSanPham + "]";
	}
	
	
}
