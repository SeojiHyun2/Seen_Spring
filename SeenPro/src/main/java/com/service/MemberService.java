package com.service;

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

}
