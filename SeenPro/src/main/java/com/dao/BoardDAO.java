package com.dao;

import java.util.HashMap;
import java.util.List;
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
		
		BoardDTO dto = template.selectOne("BoardMapper.boardView", Integer.parseInt(boardno));
		return dto;
	}

	public void save(BoardDTO dto) {
		int n = template.insert("BoardMapper.writeboard",dto);
		
	}

	public List<BoardDTO> boardList(HashMap<String, String> map) {
		
		List<BoardDTO> list = template.selectList("BoardMapper.listAll", map);
		return list;
	}


}
