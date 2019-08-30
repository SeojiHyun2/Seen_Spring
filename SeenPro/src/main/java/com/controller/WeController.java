package com.controller;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.MemberADTO;
import com.dto.MemberDTO;
import com.service.MemberService;


@Controller
public class WeController {
	
	@Autowired
	MemberService service;

	@RequestMapping(value = "/joinUI")
	public String test() {
		System.out.println("WeController");
		
		return "joinUI";
	}
	
	@RequestMapping(value = "/loginUI")
	public String loginUI() {
		System.out.println("WeController");
		
		return "loginUI";
	
	}
	
	@RequestMapping(value = "/login_mem")
	public String login(@RequestParam Map<String,String> map, HttpSession session
			, Model model) {
		System.out.println("loginController");
		
		MemberDTO dto = service.login_mem(map);
		if(dto!=null)
		{
			session.setAttribute("login_mem", dto);
			return  "main";
			
		}else {
		model.addAttribute("mesg", "로그인이 실패했습니다.");
		return "loginUI";
		}
		
	}
		@RequestMapping(value = "/login_art")
		public String login_art(@RequestParam Map<String,String> map, HttpSession session
				, Model model) {
			System.out.println("login_artController");
			
			MemberADTO dto = service.login_art(map);
			if(dto!=null)
			{
				session.setAttribute("login_art", dto);
				return  "main";
				
			}else {
			model.addAttribute("mesg", "로그인이 실패했습니다.");
			return "loginUI";
			}
	}
	
	
}
