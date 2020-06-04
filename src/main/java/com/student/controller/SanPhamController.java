package com.student.controller;

import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.student.entity.NguoiDungCT;
import com.student.entity.SanPham;
import com.student.service.NguoiDungService;
import com.student.service.SanPhamService;



@Controller
public class SanPhamController {
	Logger mylogger=Logger.getLogger(getClass().getName());
	@Autowired
	SanPhamService sanPhamServiceImp;
	
	@Autowired
	NguoiDungService nguoiDungService;
	
	
	@GetMapping("/home")
	public String home(HttpSession session,Model theModel) {
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username="";
		if (principal instanceof UserDetails) {
			username = ((UserDetails)principal).getUsername();
		}
		if(username!="") {
			NguoiDungCT nguoiDungCT= nguoiDungService.getChiTietUser(username);
			session.setAttribute("nguoiDungCT", nguoiDungCT);
		}
		
		session.setAttribute("username", username);
		
		List<SanPham> listSanPham=sanPhamServiceImp.getDSSanPham();
		theModel.addAttribute("dsSanPham",listSanPham);
		
		return "index";
	}
	
	@GetMapping("/home/danhmuc/danhsachsp")
	public String dsSanPhamDM(@RequestParam int id,Model theModel) {
		theModel.addAttribute("dsSanPham",sanPhamServiceImp.getDSSanPhamTheoDanhMuc(id));
		return "danhmuc";
	}
	
	@GetMapping("/home/timkiemsp")
	public String dsSanPhamtk(@RequestParam("tensanpham") String ten,Model theModel) {
		List<SanPham> dsList=sanPhamServiceImp.getDSSanPhamTimKiem(ten);
		theModel.addAttribute("dsSanPham",dsList);
	
		
		return "index";
	}
	@GetMapping("/home/chitiet/sp")
	public String dsSanPhamtk(@RequestParam("id") int id,Model theModel) {
		SanPham sanPham=sanPhamServiceImp.getChiTietSP(id);
		theModel.addAttribute("sanPham",sanPham);
	
		
		return "chitietsanpham";
	}

}
