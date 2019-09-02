package com.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.MemberADTO;
import com.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	SqlSessionTemplate template;
	
	
	public MemberDTO login_mem(Map<String, String> map) {
		
		MemberDTO dto = template.selectOne("MemberMapper_JS.memberLogin", map);
		return dto;
	}


	public MemberADTO login_art(Map<String, String> map) {
		MemberADTO dto = template.selectOne("MemberMapper_JS.memberArtLogin", map);
		return dto;
	}

	
}
