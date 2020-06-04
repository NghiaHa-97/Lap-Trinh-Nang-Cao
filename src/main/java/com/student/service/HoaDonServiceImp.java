package com.student.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.student.dao.HoaDonDAO;
import com.student.entity.ChiTietHoaDon;
import com.student.entity.HoaDon;

@Service
public class HoaDonServiceImp implements HoaDonService {

	@Autowired
	HoaDonDAO hoaDonDAO;
	
	@Transactional
	@Override
	public void saveHoaDon(HoaDon hoaDon) {
		hoaDonDAO.saveHoaDon(hoaDon);
		
	}
	
	@Transactional
	@Override
	public void saveChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		hoaDonDAO.saveChiTietHoaDon(chiTietHoaDon);
		
	}
	
	
	
}
