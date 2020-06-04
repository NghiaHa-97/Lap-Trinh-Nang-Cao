package com.student.rest;

import java.util.ArrayList;
import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.student.entity.ChiTietHoaDon;


@RestController
@RequestMapping("/apihoadon")
public class RestHoaDonController {

	@PostMapping("/giohang")
	public ChiTietHoaDon creatGioHang(HttpSession session,@RequestBody ChiTietHoaDon chiTietHoaDon) {
		
		if(session.getAttribute("listChiTietHD")==null) {
			List<ChiTietHoaDon> listChiTietHD=new ArrayList<>();
			listChiTietHD.add(chiTietHoaDon);
			session.setAttribute("listChiTietHD", listChiTietHD);
		}else {
			List<ChiTietHoaDon> listChiTietHD=(List<ChiTietHoaDon>) session.getAttribute("listChiTietHD");
			boolean kt=false;
			for (ChiTietHoaDon chiTietHoaDon2 : listChiTietHD) {
				if(chiTietHoaDon2.getSanPham().getId()==chiTietHoaDon.getSanPham().getId()) {
					chiTietHoaDon2.setDonGia(chiTietHoaDon.getDonGia()+chiTietHoaDon2.getDonGia());
					chiTietHoaDon2.setSoLuong(chiTietHoaDon.getSoLuong()+chiTietHoaDon2.getSoLuong());
					kt=true;
				}
		
			}
			if(kt==false) {
				listChiTietHD.add(chiTietHoaDon);
			}
			
			//session.setAttribute("listChiTietHD", listChiTietHD);
			
			
		}

		return chiTietHoaDon;
	}
	
	@DeleteMapping("/giohang/{id}")
	public boolean deleGioHang( HttpSession session, @PathVariable int id) {
		
		List<ChiTietHoaDon> chiTietHoaDons=(List<ChiTietHoaDon>) session.getAttribute("listChiTietHD");
		int i=0;
		for (ChiTietHoaDon chiTietHoaDon : chiTietHoaDons) {
			
			if(chiTietHoaDon.getSanPham().getId()==id) {
				chiTietHoaDons.remove(i);
				return true;
			}
			i++;
		}
		
		return false;
	}
	
	
	
}
