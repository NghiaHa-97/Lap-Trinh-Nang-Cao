package com.student.dao;

import com.student.entity.ChiTietHoaDon;
import com.student.entity.HoaDon;

public interface HoaDonDAO {
	public void saveHoaDon(HoaDon hoaDon);
	public void saveChiTietHoaDon(ChiTietHoaDon chiTietHoaDon);
}
