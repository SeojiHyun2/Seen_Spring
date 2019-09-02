package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.WorkDTO;
import com.service.MemberService;
import com.service.WorkService;

public class WorkController {

	@Autowired
	MemberService service;
	
	@Autowired
	WorkService wservice;
	
	
	@RequestMapping("/workList")
	public ModelAndView workList(@RequestParam("wCategory") String wCategory) {
		
		List<WorkDTO> list = wservice.workList(wCategory);
		ModelAndView mav = new ModelAndView();
		mav.addObject("workList",list);
		mav.setViewName("main");
		return mav;
	}
	
}
