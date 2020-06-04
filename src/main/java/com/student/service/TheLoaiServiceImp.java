package com.student.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.student.dao.TheLoaiDAO;
import com.student.entity.TheLoai;

@Service
public class TheLoaiServiceImp implements TheLoaiService {
	
	@Autowired
	TheLoaiDAO theLoaiServiceImp;
	
	@Override
	@Transactional
	public List<TheLoai> dsTheLoai() {
		
		return theLoaiServiceImp.dsTheLoai();
	}
	
}
