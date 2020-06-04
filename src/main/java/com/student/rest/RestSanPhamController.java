package com.student.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.student.entity.SanPham;
import com.student.service.SanPhamService;

@RestController
@RequestMapping("/apisanpham")
public class RestSanPhamController {
	
	@Autowired
	SanPhamService sanPhamService;
	
	@GetMapping("/sanphams/{id}")
	public SanPham getSanPham(@PathVariable int id) {
		return sanPhamService.getChiTietSP(id);
	}
	
	@GetMapping("/sanphams")
	public List<SanPham> getListSanPham() {
		return sanPhamService.getDSSanPham();
	}
	
	@PutMapping("/sanphams")
	public SanPham updateSanPham(@RequestBody SanPham sanPham ) {
		sanPhamService.saveSanPham(sanPham);
		return sanPham;
	}
	
}
