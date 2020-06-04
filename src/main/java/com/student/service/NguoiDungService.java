package com.student.service;

import com.student.entity.NguoiDungCT;
import com.student.entity.Users;

public interface NguoiDungService {
	public void luuTTNguoiDung(Users user);
	public NguoiDungCT getChiTietUser(String username);
}
