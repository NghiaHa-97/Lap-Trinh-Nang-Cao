package com.student.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;
@Entity
@Table(name = "HoaDon")
public class HoaDon {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "HoaDonID")
	private int id;
	
	@Column(name = "Time")
	@Temporal(TemporalType.DATE)
	private Date time;
	
	@Column(name = "TongTien")
	private int tongTien;
	
	
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.REFRESH})
	@JoinColumn(name = "NguoiDungCTID")
	private NguoiDungCT nguoiDungCT;
	
	
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "hoaDon",cascade = CascadeType.ALL)
	@JsonIgnore
	private List<ChiTietHoaDon> dsChiTietHoaDon;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public Date getTime() {
		return time;
	}


	public void setTime(Date time) {
		this.time = time;
	}


	public int getTongTien() {
		return tongTien;
	}


	public void setTongTien(int tongTien) {
		this.tongTien = tongTien;
	}


	public NguoiDungCT getNguoiDungCT() {
		return nguoiDungCT;
	}


	public void setNguoiDungCT(NguoiDungCT nguoiDungCT) {
		this.nguoiDungCT = nguoiDungCT;
	}


	public List<ChiTietHoaDon> getDsChiTietHoaDon() {
		return dsChiTietHoaDon;
	}


	public void setDsChiTietHoaDon(List<ChiTietHoaDon> dsChiTietHoaDon) {
		this.dsChiTietHoaDon = dsChiTietHoaDon;
	}


	public HoaDon(int id, Date time, int tongTien, NguoiDungCT nguoiDungCT, List<ChiTietHoaDon> dsChiTietHoaDon) {
		this.id = id;
		this.time = time;
		this.tongTien = tongTien;
		this.nguoiDungCT = nguoiDungCT;
		this.dsChiTietHoaDon = dsChiTietHoaDon;
	}


	public HoaDon() {
	}
	
	
	
	
}
