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

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@Table(name = "SanPham")
public class SanPham {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "SanPhamID")
	private int id;
	
	@Column(name = "TenSanPham")
	private String tenSanPham;
	
	@Column(name = "GiaKM")
	private int giaKM;
	
	@Column(name = "Gia")
	private int gia;
	
	@Column(name = "SoLuong")
	private int soLuong;
	
	@Column(name = "AnhDaiDien")
	private String anhDaiDien;
	
	@Column(name = "Ngay")
	@Temporal(TemporalType.DATE)
	@JsonFormat(pattern="yyyy-MM-dd'T'HH:mm:ss")
	private Date ngay;
	
	
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "sanPham",cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	@JsonIgnore
	private List<ChiTietHoaDon> dsChiTietHoaDon;
	
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.REFRESH})
	@JoinColumn(name="NSXID")
	private NhaSanXuat nhaSanXuat;
	
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.REFRESH})
	@JoinColumn(name="TheLoaiID")
	private TheLoai theLoai;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public int getGiaKM() {
		return giaKM;
	}

	public void setGiaKM(int giaKM) {
		this.giaKM = giaKM;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public String getAnhDaiDien() {
		return anhDaiDien;
	}

	public void setAnhDaiDien(String anhDaiDien) {
		this.anhDaiDien = anhDaiDien;
	}

	public Date getNgay() {
		return ngay;
	}

	public void setNgay(Date ngay) {
		this.ngay = ngay;
	}

	public List<ChiTietHoaDon> getDsChiTietHoaDon() {
		return dsChiTietHoaDon;
	}

	public void setDsChiTietHoaDon(List<ChiTietHoaDon> dsChiTietHoaDon) {
		this.dsChiTietHoaDon = dsChiTietHoaDon;
	}

	public NhaSanXuat getNhaSanXuat() {
		return nhaSanXuat;
	}

	public void setNhaSanXuat(NhaSanXuat nhaSanXuat) {
		this.nhaSanXuat = nhaSanXuat;
	}

	public TheLoai getTheLoai() {
		return theLoai;
	}

	public void setTheLoai(TheLoai theLoai) {
		this.theLoai = theLoai;
	}

	public SanPham(int id, String tenSanPham, int giaKM, int gia, int soLuong, String anhDaiDien, Date ngay,
			List<ChiTietHoaDon> dsChiTietHoaDon, NhaSanXuat nhaSanXuat, TheLoai theLoai) {
		this.id = id;
		this.tenSanPham = tenSanPham;
		this.giaKM = giaKM;
		this.gia = gia;
		this.soLuong = soLuong;
		this.anhDaiDien = anhDaiDien;
		this.ngay = ngay;
		this.dsChiTietHoaDon = dsChiTietHoaDon;
		this.nhaSanXuat = nhaSanXuat;
		this.theLoai = theLoai;
	}

	public SanPham() {
	}

	@Override
	public String toString() {
		return "SanPham [id=" + id + ", tenSanPham=" + tenSanPham + ", giaKM=" + giaKM + ", gia=" + gia + ", soLuong="
				+ soLuong + ", anhDaiDien=" + anhDaiDien + ", ngay=" + ngay + ", dsChiTietHoaDon=" + dsChiTietHoaDon
				+ ", nhaSanXuat=" + nhaSanXuat + ", theLoai=" + theLoai + "]";
	}
	
	
	
}
