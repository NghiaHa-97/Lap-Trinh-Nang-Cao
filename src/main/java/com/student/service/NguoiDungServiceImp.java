package com.student.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.student.dao.NguoiDungDAO;
import com.student.entity.NguoiDungCT;
import com.student.entity.Users;

@Service
public class NguoiDungServiceImp implements NguoiDungService{
	
	@Autowired
	NguoiDungDAO nguoiDungDAO;
	
	@Transactional
	@Override
	public void luuTTNguoiDung(Users user) {
		nguoiDungDAO.luuTTNguoiDung(user);
		
	}
	@Transactional
	@Override
	public NguoiDungCT getChiTietUser(String username) {
		
		return nguoiDungDAO.getChiTietUser(username);
	}
	
	
	
}
