package com.controller;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

import org.springframework.stereotype.Controller;

@Controller
public class SendMail extends Authenticator {
	
	public PasswordAuthentication getPasswordAuthentication() {
		System.out.println("PasswordAuthentication");
		// 네이버나 Gmail 사용자 계정 설정.
		// Gmail의 경우 @gmail.com을 제외한 아이디만 입력한다.
		return new PasswordAuthentication("s_jh971205", "GLSXL1010");
		}


}
