package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.MemberDTO;
import com.dto.SweetDTO;
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
		mav.addObject("workUp", list);
		mav.setViewName("workList");
		return mav;
	}

	@RequestMapping("/workDetail")
	@ModelAttribute("detail")
	public WorkDTO workDetail(@RequestParam("wCode") String wCode) {

		System.out.println("kkkkkkkkkkk"+wCode);
		WorkDTO dto = wservice.workDetail(wCode);
		return dto;
	}

	
	@RequestMapping("/loginCheck/sweetAdd")
	public String sweetAdd(SweetDTO sweet, HttpSession session) {

		MemberDTO dto = (MemberDTO) session.getAttribute("login_mem");
		sweet.setUserid(dto.getUserid());
		wservice.sweetAdd(sweet);

		return "redirect:sweetList?userid" +sweet.getUserid();
	}
	
	
	@RequestMapping("/inputWorkUI")
	public String inputWorkUI() {
		return "inputWorkUI";
	}
	
	@RequestMapping(value = "/inputWork", method = RequestMethod.POST)
	public String inputWork(WorkDTO wDTO, HttpServletRequest req) {
	
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
		req.setAttribute("workUp",wDTO);
		System.out.println(wDTO);
		
		
		return "thanks";
	}
	

	@RequestMapping("/loginCheck/sweetList")
	public String sweetList(RedirectAttributes attr, HttpSession session) {

		MemberDTO dto = (MemberDTO) session.getAttribute("login_mem");
		String userid = dto.getUserid();
		List<SweetDTO> list = wservice.sweetList(userid);
		attr.addFlashAttribute("sweetList", list);
		

		return "redirect:../sweetList";
	}
	
	
	@RequestMapping("/loginCheck/sweetDel")
	@ResponseBody
	public void sweetDel(@RequestParam("num") int num) {

		System.out.println(num);
		wservice.sweetDel(num);
	}
	
	@RequestMapping("/loginCheck/delAllSweet")
	public String delAllSweet(@RequestParam("wCode") ArrayList<String> list) {

		System.out.println("??????????????"+list);
		
		wservice.delAllSweet(list);
		
		return "redirect:../loginCheck/sweetList";
		
		
	}
	
	
	


}
