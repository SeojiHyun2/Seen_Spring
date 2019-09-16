package com.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.MemberDAO;
import com.dto.MemberADTO;
import com.dto.MemberDTO;

@Service
public class MemberService {

	@Autowired
	MemberDAO dao;

	public MemberDTO login_mem(Map<String, String> map) {
		MemberDTO dto = dao.login_mem(map);
		return dto;
	}

	public MemberADTO login_art(Map<String, String> map) {
		MemberADTO dto = dao.login_art(map);
		return dto;
	}

	public MemberDTO mypage(String userid) {
		
		MemberDTO dto = dao.mypage(userid);
		
		return dto;
	}
	
	public MemberADTO mypage_art(String userid) {
		
		MemberADTO dto = dao.mypage_art(userid);
		
		return dto;
	}

	public void memberUpdate(MemberDTO m) {
		dao.memberUpdate(m);
		
	}

	public void memberUpdate_art(MemberADTO m) {
		dao.memberUpdate_art(m);
	
	}

	public void memberPeoAdd(MemberDTO m) {
	
		dao.memberPeoAdd(m);
		
	}

	public void memberArtAdd(MemberADTO a) {
		dao.memberArtAdd(a);
		
	}

	public MemberDTO memIdConfirm(String userid) {
		
		 MemberDTO dto = dao.memIdConfirm(userid);
		
		return dto;
	}

	public MemberADTO artIdConfirm(String artistname) {
		
		 MemberADTO dto = dao.artIdConfirm(artistname);
		
		return dto;
	}

	
	public void passwdMyChange(Map<String, String> map) {
	
		dao.passwdMyChange(map);
	}

	public MemberDTO mailCheck(HashMap<String, String> map) {
		
		MemberDTO dto = dao.mailCheck(map);
		
		
		return dto;
		
		
	}

}
