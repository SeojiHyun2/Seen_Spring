package com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BoardDAO;
import com.dao.Board_repDAO;
import com.dto.BoardDTO;
import com.dto.Board_repDTO;

@Service
public class Board_repService {

	@Autowired
	Board_repDAO dao;

	public void reply(HashMap<String, String> map) {
		
		dao.reply(map);
	
		
	}

public List<Board_repDTO> replyList(String boardno) {
		
		List<Board_repDTO> list = dao.replyList(boardno);
		return list;
	}

public List<Board_repDTO> boardView_rep(int boardno) {
	
	List<Board_repDTO> list = dao.boardView_rep(boardno);
	return list;
}



	
}
