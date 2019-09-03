package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
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
	
	
	@RequestMapping("/inputWorkUI")
	public String inputWorkUI() {
		return "inputWorkUI";
	}
	
	@RequestMapping(value = "/inputWork", method = RequestMethod.POST)
	public String inputWork(WorkDTO wDTO, Model model) {
	
		System.out.println("여기");
		
		System.out.println(wDTO.getwName());

		CommonsMultipartFile theFile = wDTO.getRealWork();
		String wWork = theFile.getOriginalFilename();  //파일 이름을 wWork에 저장함
		wDTO.setwWork(wWork);

		
		//저장디렉토리
		File f = new File("c://upload", wDTO.getwWork());
		
		try {
			theFile.transferTo(f);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		wservice.workUp(wDTO);
		model.addAttribute("workUp",wDTO);
	
		
		return "thanks";
	}
	
}
