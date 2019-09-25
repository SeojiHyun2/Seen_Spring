package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.MemberDTO;
import com.dto.WorkDTO;
import com.service.MemberService;
import com.service.WorkService;

@Controller
public class DonationController {

	@Autowired
	MemberService service;

	@Autowired
	WorkService wservice;

	@RequestMapping("/loginCheck/donationConfirm")
	public String donationConfirm(@RequestParam("wCode") String wCode, HttpSession session, RedirectAttributes xxx) {

		MemberDTO mDTO = (MemberDTO) session.getAttribute("login_mem");
		if (mDTO != null) {
			String userid = mDTO.getUserid();

			mDTO = service.mypage(userid);
			WorkDTO wDTO = wservice.cartByNum(wCode);

			xxx.addFlashAttribute("mDTO", mDTO);
			xxx.addFlashAttribute("wDTO", wDTO);

			return "redirect:../donationConfirm";
		} else {
		
			session.setAttribute("donationcant", "독자 로그인 시 가능합니다.");
			return "redirect:../workDetail?wCode=y=" + wCode;
		}

	}

}
