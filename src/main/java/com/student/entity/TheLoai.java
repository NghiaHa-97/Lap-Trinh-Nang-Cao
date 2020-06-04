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
@Table(name = "TheLoai")
public class TheLoai {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "TheLoaiID")
	private int id;
	
	@Column(name = "TenLoai")
	private String tenLoai;
	
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "theLoai",cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	@JsonIgnore
	private List<SanPham> dsSanPham;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenLoai() {
		return tenLoai;
	}

	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}

	public List<SanPham> getDsSanPham() {
		return dsSanPham;
	}

	public void setDsSanPham(List<SanPham> dsSanPham) {
		this.dsSanPham = dsSanPham;
	}

	public TheLoai(int id, String tenLoai, List<SanPham> dsSanPham) {
		this.id = id;
		this.tenLoai = tenLoai;
		this.dsSanPham = dsSanPham;
	}

	public TheLoai() {
	}

	@Override
	public String toString() {
		return "TheLoai [id=" + id + ", tenLoai=" + tenLoai + ", dsSanPham=" + dsSanPham + "]";
	}
	
	
	
}
