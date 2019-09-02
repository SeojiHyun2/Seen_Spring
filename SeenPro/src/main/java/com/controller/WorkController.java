package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.WorkDTO;
import com.service.MemberService;
import com.service.WorkService;

@Controller
public class WorkController {

	@Autowired
	MemberService service;
	
	@Autowired
	WorkService wservice;
	
	
	@RequestMapping("/workList")
	public ModelAndView workList(@RequestParam("wCategory") String wCategory) {
		
		System.out.println(wCategory);
		List<WorkDTO> list = wservice.workList(wCategory);
		System.out.println(list);
		ModelAndView mav = new ModelAndView();
		mav.addObject("workList",list);
		mav.setViewName("workList");
		return mav;
	}
	
}
