package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.MemberADTO;
import com.dto.MemberDTO;
import com.dto.SweetDTO;
import com.dto.WorkDTO;
import com.service.MemberService;
import com.service.WorkService;

import oracle.net.aso.s;

@Controller
public class WorkController {

	@Autowired
	MemberService service;

	@Autowired
	WorkService wservice;

	@RequestMapping("/workList")
	public ModelAndView workList(@RequestParam("wCategory") String wCategory, HttpSession ses) {

		System.out.println(wCategory);
		List<WorkDTO> list = wservice.workList(wCategory);
		System.out.println(list);
		ModelAndView mav = new ModelAndView();
		mav.addObject("workUp", list);
		ses.setAttribute("wCategory", wCategory);
		mav.setViewName("workList");
		return mav;
	}

	@RequestMapping("/workDetail")
	@ModelAttribute("detail")
	public WorkDTO workDetail(@RequestParam("wCode") String wCode) {

		WorkDTO dto = wservice.workDetail(wCode);
		return dto;
	}

	@RequestMapping("/loginCheck/sweetAdd")
	public String sweetAdd(SweetDTO sweet, HttpSession session, RedirectAttributes attr
			) {

		MemberDTO dto = (MemberDTO) session.getAttribute("login_mem");
		sweet.setUserid(dto.getUserid());
		wservice.sweetAdd(sweet);

		
		String wCategory=(String)session.getAttribute("wCategory");
	session.setAttribute("addok", "sweet에 추가 되었습니다.");

		return "redirect:../workList?wCategory=" + wCategory;

	}

	@RequestMapping("loginCheck/inputWorkUI")
	public String inputWorkUI() {

		return "redirect:../inputWorkUI";
	}

	@RequestMapping(value = "inputWork", method = RequestMethod.POST)
	public String inputWork(WorkDTO wDTO, HttpServletRequest req) {

		System.out.println(wDTO.getwName());

		CommonsMultipartFile theFile = wDTO.getRealWork();
		String wWork = theFile.getOriginalFilename(); // 파일 이름을 wWork에 저장함
		wDTO.setwWork(wWork);

		// 저장디렉토리
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
		req.setAttribute("workUp", wDTO);
		System.out.println(wDTO);

		return "thanks";
	}

	@RequestMapping("/myWorkList")
	public ModelAndView myWorkList(HttpSession session, ModelAndView m) {

		MemberADTO aDTO = (MemberADTO) session.getAttribute("login_art");
		String artistname = aDTO.getArtistname();

		List<WorkDTO> list = wservice.myWorkList(artistname);

		m.addObject("workUp", list);
		m.setViewName("myWorkList");

		return m;
	}
	
	
	@RequestMapping("/workDel")
	public ModelAndView workDel(@RequestParam("artistname") String artistname, 
					  	  @RequestParam("wCode") String wCode, HttpSession session, ModelAndView mnv) {
		
		MemberADTO aDTO = (MemberADTO) session.getAttribute("login_art");
		
		
		  if(aDTO == null) {
	         session.setAttribute("cant", "해당 작품의 작가님만 삭제가능합니다. 홈 메뉴로 돌아갑니다.");
	         mnv.setViewName("main");
	      }else if(aDTO.getArtistname().equals(artistname)) {
	    	 wservice.workDel(wCode);
	         session.setAttribute("can", "게시물을 삭제하였습니다. 마이페이지 목록으로 돌아갑니다.");
	         mnv.setViewName("art_FirstMypage");
	      }else {
	         session.setAttribute("cant", "작가님 본인의 작품만 삭제가능합니다. 마이페이지 목록으로 돌아갑니다.");
	         mnv.setViewName("art_FirstMypage");
	      }

		return mnv;
	}

	@RequestMapping("/loginCheck/sweetList")
	public String sweetList(RedirectAttributes attr, HttpSession session) {

		MemberDTO dto = (MemberDTO) session.getAttribute("login_mem");
		String userid = dto.getUserid();
		List<SweetDTO> list = wservice.sweetList(userid);
		attr.addFlashAttribute("sweetList", list);

		return "redirect:../sweetList";
	}

	@RequestMapping("/sweetDel")
	public String sweetDel(@RequestParam("num") String num) {

		System.out.println("~~~~~~~~~~~~~@@~~~~~~~~~~~~~~~~~***********" + num);
		wservice.sweetDel(num);
		return "redirect:/loginCheck/sweetList";
	}

	@RequestMapping("/sweetAllDel")
	@ResponseBody
	public void delAllSweet(@RequestParam("userid") String userid) {
		wservice.sweetAllDel(userid);

	}

	@RequestMapping("/sweetChartSource")
	public String sweetChartSource(HashMap<String, Integer> map) {

		List<String> list = wservice.sweetChartSource();
		
		int photo = 0;
		int draw = 0;
		int sound = 0;
		int letter = 0;
		int video = 0;
		
	    for(String str : list) {
	    	if("Photo".equals(str)){
	    		photo++;
	    	}else if("Draw".equals(str)) {
	    		draw++;
	        }else if("Sound".equals(str)) {
	        	sound++;
	        }else if("Letter".equals(str)) {
	        	letter++;
	        }else if("Video".equals(str)) {
	        	video++;
	        }
	     }

	    map.put("photoCount", photo);
	    map.put("drawCount", draw);
	    map.put("soundCount", sound);
	    map.put("letterCount", letter);
	    map.put("videoCount", video);
	    
		
		return "sweetChart";
	}
	
	
}
