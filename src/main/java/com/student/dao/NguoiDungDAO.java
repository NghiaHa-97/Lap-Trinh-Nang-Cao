package com.student.dao;

import com.student.entity.NguoiDungCT;
import com.student.entity.Users;

public interface NguoiDungDAO {
	public void luuTTNguoiDung(Users user);
	public NguoiDungCT getChiTietUser(String username);
}
