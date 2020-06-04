package com.student.rest;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.student.entity.Users;
import com.student.service.NguoiDungService;

@RestController
@RequestMapping("/apinguoidung")
public class RestNguoiDungController {
	
	@Autowired
	NguoiDungService nguoiDungService;
	
	@PostMapping("/nguoidung")
	public Users luuNguoiDung(@RequestBody Users user) {
		
		user.setId(0);
		nguoiDungService.luuTTNguoiDung(user);
		System.out.println(user);
		return user;
	}
	
	
	

	
}
