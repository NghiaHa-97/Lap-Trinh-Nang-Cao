package com.student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.student.entity.SanPham;
import com.student.service.SanPhamService;

@Component
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	SanPhamService sanPhamService;
	
	@GetMapping("/home")
	public String adminHome() {
		return "admin-trangchu";
	}
	
	//----------------qlsp
	@GetMapping("/qlsp/danhsach")
	public String danhSachSanPham() {
		return "admin-tatcasanpham";
	}
	@GetMapping("/qlsp/themsanpham")
	public String themSanPham(Model theModel) {
		SanPham sanPham=new SanPham();
		theModel.addAttribute("sanPham",sanPham);
		return "admin-suasanpham";
	}
	@GetMapping("/qlsp/formsuasp")
	public String dsSanPhamtk(@RequestParam("id") int id,Model theModel) {
		SanPham sanPham=sanPhamService.getChiTietSP(id);
		theModel.addAttribute("sanPham",sanPham);
		return "admin-suasanpham";
	}
	
	@GetMapping("/qlsp/savesanpham")
	public String dsSanPhamtk(@ModelAttribute("sanPham") SanPham sanPham) {
		System.out.println("------------"+sanPham.getTenSanPham());
		sanPhamService.saveSanPham(sanPham);
		System.out.println(sanPham.getId());
		return "redirect:/admin/qlsp/danhsach";
	}
	
	@GetMapping("/qlsp/xoasanpham")
	public String xoaSanPhamtk(@RequestParam("id") int id) {
		sanPhamService.deleteSanPham(id);
		
		return "redirect:/admin/qlsp/danhsach";
	}
	
	
	
	
	
	//------------------------qlkh
	@GetMapping("/qlkh/danhsach")
	public String danhSachKhachHang() {
		return "admin-tatcakhachhang";
	}
	
}
