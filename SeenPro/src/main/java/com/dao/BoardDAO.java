package com.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSessionTemplate template;

	public void content(Map<String, Object> paramMap) {
		
	int n = template.insert("BoardMapper.writeboard",paramMap);
		
	}

}
