package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.WorkDAO;
import com.dto.WorkDTO;

@Service
public class WorkService {
	
	@Autowired
	WorkDAO dao;

	public List<WorkDTO> workList(String wCategory) {
	
		List<WorkDTO> list = dao.workList(wCategory);
		return list;
	}

}
