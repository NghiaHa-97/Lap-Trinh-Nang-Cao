package com.student.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "AlbumAnh")
public class AlbumAnh {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "AnhID")
	private int id;
	
	@Column(name = "SanPhamID")
	private int sanPhamId;
	
	@Column(name = "Link")
	private String link;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSanPhamId() {
		return sanPhamId;
	}

	public void setSanPhamId(int sanPhamId) {
		this.sanPhamId = sanPhamId;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public AlbumAnh(int id, int sanPhamId, String link) {
		this.id = id;
		this.sanPhamId = sanPhamId;
		this.link = link;
	}

	public AlbumAnh() {
	}
	
	
}
