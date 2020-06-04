package com.student.service;

import java.util.List;

import com.student.entity.SanPham;

public interface SanPhamService {
	public List<SanPham> getDSSanPham();
	public List<SanPham> getDSSanPhamTheoDanhMuc(int maDM);
	public List<SanPham> getDSSanPhamTimKiem(String ten);
	public SanPham getChiTietSP(int id);
	public void saveSanPham(SanPham sanPham);
	public void deleteSanPham(int id);
	
}
