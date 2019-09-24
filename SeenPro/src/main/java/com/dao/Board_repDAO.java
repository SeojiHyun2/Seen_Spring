package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.BoardDTO;
import com.dto.Board_repDTO;

@Repository
public class Board_repDAO {
	
	@Autowired
	SqlSessionTemplate template;

	public void reply(HashMap<String, String> map) {
		
	  int n = template.insert("Board_repMapper.reply", map);
		
	}


	public List<Board_repDTO> replyList(String boardno) {
		List<Board_repDTO> list = template.selectList("Board_repMapper.replyList", Integer.parseInt(boardno));
		return list;
	}


}
