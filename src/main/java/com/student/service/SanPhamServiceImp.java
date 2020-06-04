package com.student.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.student.dao.SanPhamDAO;
import com.student.entity.SanPham;

@Service
public class SanPhamServiceImp implements SanPhamService {
	
	@Autowired
	SanPhamDAO sanPhamDAOImp;
	
	
	@Override
	@Transactional
	public List<SanPham> getDSSanPham() {
		
		return sanPhamDAOImp.getDSSanPham();
	}


	@Override
	@Transactional
	public List<SanPham> getDSSanPhamTheoDanhMuc(int maDM) {
		return sanPhamDAOImp.getDSSanPhamTheoDanhMuc(maDM);
	}


	@Override
	@Transactional
	public List<SanPham> getDSSanPhamTimKiem(String ten) {
		return sanPhamDAOImp.getDSSanPhamTimKiem(ten);
	}


	@Override
	@Transactional
	public SanPham getChiTietSP(int id) {
		
		return sanPhamDAOImp.getChiTietSP(id);
	}


	@Override
	@Transactional
	public void saveSanPham(SanPham sanPham) {
		sanPhamDAOImp.saveSanPham(sanPham);
		
	}


	@Override
	@Transactional
	public void deleteSanPham(int id) {
		sanPhamDAOImp.deleteSanPham(id);
		
	}
	
	
	
	
	
	
}
