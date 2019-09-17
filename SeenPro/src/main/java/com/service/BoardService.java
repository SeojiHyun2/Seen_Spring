package com.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BoardDAO;

@Service
public class BoardService {

	@Autowired
	BoardDAO dao;

	

	public int content(Map<String, Object> paramMap) {
	
		dao.content(paramMap);
		return 0;
	}
}
