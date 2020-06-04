package com.student.service;

import com.student.entity.ChiTietHoaDon;
import com.student.entity.HoaDon;

public interface HoaDonService {
	public void saveHoaDon(HoaDon hoaDon);
	public void saveChiTietHoaDon(ChiTietHoaDon chiTietHoaDon);
}
