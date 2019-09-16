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
			return "mailUI";
		} else {

			session.setAttribute("mailCheck", dto);
			return "redirect:sendMailCheck";
		}

	}

	
	
	
	
	
}



