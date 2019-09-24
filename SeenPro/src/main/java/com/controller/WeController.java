package com.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.MemberADTO;
import com.dto.MemberDTO;
import com.service.MemberService;

@Controller
public class WeController {

	@Autowired
	MemberService service;

	@RequestMapping(value = "/Mem_Confirm")

	public String Mem_Confirm(@RequestParam("userid") String userid, HttpSession session) {

		session.setAttribute("userid", userid);

		MemberDTO dto = service.memIdConfirm(userid);

		if (dto == null) {
			session.setAttribute("mem_confirmId", "0");
		} else {
			session.setAttribute("mem_confirmId", "1");
		}

		return "confirmUserId";
	}

	@RequestMapping(value = "/loginCheck/passwdMyChange")
	public String passwdMyChange(@RequestParam Map<String, String> map, @RequestParam("m_newpasswd") String m_newpasswd,
			@RequestParam("m_passwd") String m_passwd, RedirectAttributes attr, HttpSession session) {

		MemberDTO dto = (MemberDTO) session.getAttribute("login_mem");
		String userid = dto.getUserid();

		map.put("userid", userid);
		map.put("m_passwd", m_passwd);
		map.put("m_newpasswd", m_newpasswd);

		MemberDTO dto2 = service.login_mem(map);


		if (dto2 == null) {

			System.out.println("<<<<<");

			attr.addFlashAttribute("passwd", "기존 비밀번호 오류");

		} else if (dto2 != null) {

			attr.addFlashAttribute("passwdok", "비밀번호가 변경되었습니다.");
			service.passwdMyChange(map);

		}
		return "redirect:../passwdmychange";

	}
	
	
	@RequestMapping(value = "/loginCheck/passwdMyChange_art")
	public String passwdMyChange_art(@RequestParam Map<String, String> map, @RequestParam("a_newpasswd") String a_newpasswd,
			@RequestParam("a_passwd") String a_passwd, RedirectAttributes attr, HttpSession session) {

		MemberADTO dto = (MemberADTO) session.getAttribute("login_art");
		String artistname = dto.getArtistname();

		map.put("artistname", artistname);
		map.put("a_passwd", a_passwd);
		map.put("a_newpasswd", a_newpasswd);

		MemberADTO dto2 = service.login_art(map);


		if (dto2 == null) {

			System.out.println("~~~~~");

			attr.addFlashAttribute("passwd", "기존 비밀번호 오류");

		} else if (dto2 != null) {

			attr.addFlashAttribute("passwdok", "비밀번호가 변경되었습니다.");
			service.passwdMyChange_art(map);

		}
		return "redirect:../passwdmychange_art";

	}
	

	@RequestMapping(value = "/Art_Confirm")
	public String Art_Confirm(@RequestParam("artistname") String artistname, HttpSession session) {
		session.setAttribute("artistname", artistname);

		MemberADTO dto = service.artIdConfirm(artistname);

		if (dto == null) {
			session.setAttribute("art_confirmId", "0");
		} else {
			session.setAttribute("art_confirmId", "1");
		}

		return "confirmartistname";
	}

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
	public String login(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		System.out.println("loginController");

		MemberDTO dto = service.login_mem(map);
		if (dto != null) {
			session.setAttribute("login_mem", dto);
			return "main";

		} else {
			model.addAttribute("mesg", "로그인이 실패했습니다.");
			return "loginUI";
		}

	}

	@RequestMapping(value = "/login_art")
	public String login_art(@RequestParam Map<String, String> map, HttpSession session, Model model) {
		System.out.println("login_artController");

		MemberADTO dto = service.login_art(map);
		if (dto != null) {
			session.setAttribute("login_art", dto);
			return "main";

		} else {
			model.addAttribute("mesg", "로그인이 실패했습니다.");
			return "loginUI";
		}
	}

	@RequestMapping(value = "/loginCheck/logout")
	public String logout(HttpSession session) {

		session.invalidate();
		return "redirect:../";
	}

	@RequestMapping(value = "/loginCheck/mem_mypage")

	public String mypage(HttpSession session) {

		MemberDTO dto = (MemberDTO) session.getAttribute("login_mem");
		String userid = dto.getUserid();

		dto = service.mypage(userid);
		session.setAttribute("login_mem", dto);

		return "redirect:../mem_mypage";

	}

	@RequestMapping(value = "/loginCheck/art_mypage")
	public String mypage_art(HttpSession session) {

		MemberADTO dto = (MemberADTO) session.getAttribute("login_art");
		String userid = dto.getArtistname();

		dto = service.mypage_art(userid);
		session.setAttribute("login_art", dto);
		return "redirect:../art_mypage";

	}

	@RequestMapping("/loginCheck/memberUpdate")
	public String memberUpdate(MemberDTO m) {
		service.memberUpdate(m);

		return "redirect:../loginCheck/mem_mypage";

	}

	@RequestMapping("/loginCheck/memberUpdate_art")
	public String memberUpdate_art(MemberADTO m) {
		service.memberUpdate_art(m);
		return "redirect:../loginCheck/art_mypage";

	}

}
