package com.student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.student.service.TheLoaiService;



@Controller
public class TheLoaiController {
	@Autowired
	TheLoaiService theLoaiServiceImp;
	
	
	@GetMapping("/home/danhmuc")
	public String dsDanhMuc(Model theModel) {
		theModel.addAttribute("dsTheLoai",theLoaiServiceImp.dsTheLoai());
		return "danhmuc";
	}
	
	
}
