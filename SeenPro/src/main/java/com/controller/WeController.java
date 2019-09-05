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
		@RequestMapping(value = "/joinArtist")
	public String joinArtist() {
		System.out.println("joinArtist");
		
		return "main";
	}
	
	
		
		@RequestMapping("/memberPeoAdd")
		
		public String memberPeoAdd(MemberDTO m, Model model) {
			
			service.memberPeoAdd(m);
			model.addAttribute("success", "See-N에 오신 것을 환영합니다. 로그인을 해주세요.");
			return "main";
		}
		
		@RequestMapping("/memberArtAdd")
		public String memberArtAdd(MemberADTO a, Model model) {
			
			System.out.println(a.toString());
			service.memberArtAdd(a);
			model.addAttribute("success", "See-N에 오신 것을 환영합니다. 로그인을 해주세요.");
			return "main";
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

		
		@RequestMapping(value="/loginCheck/logout")
		public String logout(HttpSession session){
			
			session.invalidate();
			return "redirect:../";
		}
		
		
		@RequestMapping(value="/loginCheck/mypage")
	
		public String mypage(HttpSession session ) {
			
			MemberDTO dto = (MemberDTO) session.getAttribute("login_mem");
			String userid = dto.getUserid();
			
			dto = service.mypage(userid);
			session.setAttribute("login_mem",dto );
			
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>");
			return "redirect:../mypage";//
	
		}
		
		@RequestMapping(value="/loginCheck/mypage_art")
		
		public String mypage_art(HttpSession session ) {
			
			MemberADTO dto = (MemberADTO) session.getAttribute("login_art");
			String userid = dto.getArtistname();
			
			dto = service.mypage_art(userid);
			session.setAttribute("login_art",dto );
			return "redirect:../mypage_art";
		
		}
		
		
		@RequestMapping("/loginCheck/memberUpdate")
		public String memberUpdate(MemberDTO m) {
			service.memberUpdate(m);
			return "redirect:../loginCheck/mypage";
	
		}
		
	
		@RequestMapping("/loginCheck/memberUpdate_art")
		public String memberUpdate_art(MemberADTO m) {
			service.memberUpdate_art(m);
			return "redirect:../loginCheck/mypage_art";
	
		}
	
}
