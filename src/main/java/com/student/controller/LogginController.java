package com.student.controller;

import java.util.logging.Logger;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.student.entity.Users;




@Controller
public class LogginController {
	@GetMapping("/")
	public String showHome(Model theModel) {
		return "redirect:/home";
	}
	
	@GetMapping("/showMyLoginForm")
	public String showFormLoggin() {
		return "login";
	}
	
	@GetMapping("/dangki")
	public String dangKi(Model theModel) {
		//Users users=new Users();
		
		//theModel.addAttribute("taiKhoan",users);
		
		return "dangki2";
	}
	

		
}
