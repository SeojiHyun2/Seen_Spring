package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.WorkDTO;

@Repository
public class WorkDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public List<WorkDTO> workList(String wCategory) {
		List<WorkDTO> list = 
				template.selectList("WorkMapper.workList", wCategory);
		return list;
		
	}

	public void workUp(WorkDTO wDTO) {
		int n = template.insert("WorkMapper.workUp",wDTO);
		
	}

}
