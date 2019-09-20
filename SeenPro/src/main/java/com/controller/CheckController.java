package com.controller;



import java.util.HashMap;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import javax.mail.Session;
import javax.mail.Transport;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dto.MemberADTO;
import com.dto.MemberDTO;
import com.service.MemberService;

@Controller
public class CheckController {

	@Autowired
	MemberService service;

	@RequestMapping("/matching")

	public String mailcheck(MemberDTO dto, HttpSession session, @RequestParam HashMap<String, String> map,
			@RequestParam("m_username") String m_username, @RequestParam("m_email1") String m_email1,
			@RequestParam("m_email2") String m_email2) {

		map.put("m_username", m_username);
		map.put("m_email1", m_email1);
		map.put("m_email2", m_email2);
		System.out.println("좋은말할때 나와:" + map);

		dto = service.mailCheck(map);
		System.out.println("DTO나와:" + dto);

		if (dto == null) {
			session.setAttribute("notmatch", "이름과 이메일이 동일하지 않습니다.");
			return "mailUI";
		} else {
			session.setAttribute("match", "회원님의 아이디가 전송되었습니다.");
			session.setAttribute("mailCheck", dto);
			return "redirect:sendMailCheck";
		}

	}

	
	@RequestMapping("/matching_art")

	public String mailcheck_art(MemberADTO dto, HttpSession session, @RequestParam HashMap<String, String> map,
			@RequestParam("a_username") String a_username, @RequestParam("a_email1") String a_email1,
			@RequestParam("a_email2") String a_email2) {

		map.put("a_username", a_username);
		map.put("a_email1", a_email1);
		map.put("a_email2", a_email2);
		System.out.println("좋은말할때 나와:" + map);

		dto = service.mailCheck_art(map);
		System.out.println("DTO나와:" + dto);

		if (dto == null) {
			session.setAttribute("notmatch", "이름과 이메일이 동일하지 않습니다.");
			return "mailUI";
			
		} else {
			session.setAttribute("match", "회원님의 아이디가 전송되었습니다.");
			session.setAttribute("mailCheck", dto);
			return "redirect:sendMailCheck_art";
		}

	}
	
	
	
}



