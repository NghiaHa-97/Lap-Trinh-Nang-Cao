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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "NguoiDungCT")
public class NguoiDungCT {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="NguoiDungCTID")
	private int id;
	
	@Column(name = "HoTen")
	private String hoTen;
	
	@Column(name = "GioiTinh")
	private Integer gT;
	
	@Column(name = "NgaySinh")
	@Temporal(TemporalType.DATE)
	private Date ngaySinh;
	
	@Column(name = "DiaChi")
	private String diaChi;
	
	@Column(name = "TaiKhoan")
	private float taiKhoan;
	
	@Column(name = "SDT")
	private String sDT;
	
	@Column(name = "Email")
	private String email;
	
	@OneToOne(mappedBy = "nguoiDungCT",cascade = CascadeType.ALL)
	private Users users;
	
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "nguoiDungCT",cascade = CascadeType.ALL)
	@JsonIgnore
	private List<HoaDon> dsHoaDon;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public int getgT() {
		return gT;
	}

	public void setgT(Integer gT) {
		this.gT = gT;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public float getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(float taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

	public String getsDT() {
		return sDT;
	}

	public void setsDT(String sDT) {
		this.sDT = sDT;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public List<HoaDon> getDsHoaDon() {
		return dsHoaDon;
	}

	public void setDsHoaDon(List<HoaDon> dsHoaDon) {
		this.dsHoaDon = dsHoaDon;
	}

	public NguoiDungCT(int id, String hoTen, Integer gT, Date ngaySinh, String diaChi, float taiKhoan, String sDT,
			String email, Users users, List<HoaDon> dsHoaDon) {
		this.id = id;
		this.hoTen = hoTen;
		this.gT = gT;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.taiKhoan = taiKhoan;
		this.sDT = sDT;
		this.email = email;
		this.users = users;
		this.dsHoaDon = dsHoaDon;
	}

	public NguoiDungCT() {
	}
	
	
}
