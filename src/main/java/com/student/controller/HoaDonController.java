package com.student.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.student.entity.ChiTietHoaDon;
import com.student.entity.HoaDon;
import com.student.entity.NguoiDungCT;
import com.student.service.HoaDonService;


@Controller
@RequestMapping("/hoadon")
public class HoaDonController {
	
	@Autowired
	HoaDonService hoaDonService;
	
	@GetMapping("/hienthigiohang")
	public String hienThiGiaHang() {
		return "giohang";
	}
	
	@PostMapping("/luuhoadon")
	public String luuHoaDon(HttpSession session) {
		HoaDon hDon=new HoaDon();
		int tongTien=0;
		hDon.setId(0);
		
		List<ChiTietHoaDon> chiTietHoaDons=(List<ChiTietHoaDon>) session.getAttribute("listChiTietHD");
		
		
		for (ChiTietHoaDon chiTietHoaDon : chiTietHoaDons) {
			tongTien+=chiTietHoaDon.getDonGia();
		}
		
		hDon.setTongTien(tongTien);
		
		NguoiDungCT nguoiDungCT=(NguoiDungCT)session.getAttribute("nguoiDungCT");
		hDon.setNguoiDungCT(nguoiDungCT);
		
		
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		   LocalDateTime now = LocalDateTime.now();
		   System.out.println(dtf.format(now));
		   DateFormat df = new SimpleDateFormat("yyyy/MM/dd"); 
		   Date timeDate;
			try {
				timeDate = df.parse(dtf.format(now));
				hDon.setTime(timeDate);
			} catch (ParseException e) {
				
				e.printStackTrace();
			}
		
		hoaDonService.saveHoaDon(hDon);
		
		for (ChiTietHoaDon chiTietHoaDon : chiTietHoaDons) {
			chiTietHoaDon.setHoaDon(hDon);
			hoaDonService.saveChiTietHoaDon(chiTietHoaDon);
		}
		chiTietHoaDons.clear();
		   
		return "giohang";
		   
		   
		 
	}
}	
