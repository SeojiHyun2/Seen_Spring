package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.WorkDAO;
import com.dto.SweetDTO;
import com.dto.WorkDTO;

@Service
public class WorkService {
	
	@Autowired
	WorkDAO dao;

	public List<WorkDTO> workList(String wCategory) {
	
		List<WorkDTO> list = dao.workList(wCategory);
		return list;
	}

	public WorkDTO workDetail(String wCode) {
		
		WorkDTO dto = dao.workDetail(wCode);
		return dto;
	}

	public void sweetAdd(SweetDTO sweet) {
		
		dao.sweetAdd(sweet);
		
	}

	public List<SweetDTO> sweetList(String userid) {
	
		List<SweetDTO> dto = dao.sweetList(userid);
		return dto;
	}

	public void sweetDel(int num) {
		dao.sweetDel(num);
		
	}

}
