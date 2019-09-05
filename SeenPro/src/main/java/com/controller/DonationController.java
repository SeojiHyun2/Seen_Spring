package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.MemberDTO;
import com.service.MemberService;
import com.service.WorkService;

@Controller
public class DonationController {
	
@Autowired
MemberService service;

@Autowired
WorkService wservice;

	
	
	@RequestMapping("loginCheck/donation")
	public void donation (@RequestParam("wCode") String wCode, HttpSession session,RedirectAttributes xxx) {
		
		MemberDTO mDTO = (MemberDTO) session.getAttribute("login_mem"); 
		
		
	}
}
