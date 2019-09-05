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


	public MemberDTO mypage(String userid) {
		
		MemberDTO dto = template.selectOne("MemberMapper_JS.mypage", userid);
		return dto;
	}
	
public MemberADTO mypage_art(String userid) {
		
		MemberADTO dto = template.selectOne("MemberMapper_JS.Amypage", userid);
		return dto;
	}


public void memberUpdate(MemberDTO m) {
	int n = template.update("MemberMapper_JS.memberUpdate", m);

	
}


public void memberUpdate_art(MemberADTO m) {
	int n = template.update("MemberMapper_JS.memberAUpdate", m);
	
}


public void memberPeoAdd(MemberDTO m) {
	
	int n = template.insert("MemberMapper_JS.memberAdd",m);
	
}


public void memberArtAdd(MemberADTO a) {
	int n = template.insert("MemberMapper_JS.memberArtAdd",a);
	
}


public MemberDTO memIdConfirm(String userid) {
	MemberDTO dto = template.selectOne("MemberMapper_JS.memIdConfirm",userid);
	return dto;
}


public MemberADTO artIdConfirm(String artistname) {
	MemberADTO dto = template.selectOne("MemberMapper_JS.artIdConfirm",artistname);
	return dto;
}


	
}
