package com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BoardDAO;
import com.dto.BoardDTO;
import com.dto.Board_repDTO;

@Service
public class BoardService {

	@Autowired
	BoardDAO dao;


	public BoardDTO boardView(int boardno) {
		BoardDTO dto = dao.boardView(boardno);
		return dto;
	}

	public void write(BoardDTO dto) {
	
		dao.write(dto);
		
	}



	public List<BoardDTO> boardList(HashMap<String, String> map) {
		
		List<BoardDTO> list = dao.boardList(map);
		return list;
	}



	public List<BoardDTO> listAll() {
		List<BoardDTO> list = dao.listAll();
		return list;
	}



	public void update(BoardDTO dto) {
		
		dao.update(dto);
		
		
	}


	public void delete(String boardno) {
	
		dao.delete(boardno);
		
	}

	
}
