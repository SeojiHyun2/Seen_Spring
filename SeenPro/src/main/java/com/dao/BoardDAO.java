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
		
		//자세히 보기 할 경우, 조회수가 하나씩 증가
		viewcnt(boardno);
		BoardDTO dto = template.selectOne("BoardMapper.boardView", Integer.parseInt(boardno));
		return dto;
	}

	public void write(BoardDTO dto) {
		int n = template.insert("BoardMapper.writeboard",dto);
		
	}

	public List<BoardDTO> boardList(HashMap<String, String> map) {
		
		List<BoardDTO> list = template.selectList("BoardMapper.boardList", map);
		return list;
	}

	public List<BoardDTO> listAll() {
		List<BoardDTO> list = template.selectList("BoardMapper.listAll");
		return list;
	}

	public void update(BoardDTO dto) {
		
	int n	= template.update("BoardMapper.update", dto);
		
	}

	public void delete(String boardno) {
		
		int n	= template.delete("BoardMapper.delete",Integer.parseInt(boardno));
		
	}

	private void viewcnt(String boardno) {
		template.update("BoardMapper.viewcnt",Integer.parseInt(boardno));
	}



}
