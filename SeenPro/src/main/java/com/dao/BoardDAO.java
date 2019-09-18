package com.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.BoardDTO;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSessionTemplate template;

	

	public BoardDTO boardView(String boardno) {
		
		BoardDTO dto = template.selectOne("BoardMapper.boardView", boardno);
		return dto;
	}

	public void save(BoardDTO dto) {
		int n = template.insert("BoardMapper.writeboard",dto);
		
	}


}
