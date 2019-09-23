package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.BoardDTO;
import com.dto.Board_repDTO;
import com.dto.MemberDTO;
import com.service.BoardService;
import com.service.Board_repService;

@Controller
public class Board_repController {

	
	
	@Autowired
	Board_repService replyService;

	
     // 댓글 입력하기 
	@RequestMapping("/loginCheck/reply")
	public String reply(HttpSession session, @RequestParam("comment") String reply_content, @RequestParam("boardno") String boardno,
			HashMap<String, String> map) {
		
		System.out.println("reply로 넘어왔나?");
		MemberDTO mdto = (MemberDTO) session.getAttribute("login_mem");
		String userid = mdto.getUserid();
		
		map.put("reply_content",reply_content);
		map.put("userid", userid);
		map.put("boardno", boardno);
		
	     replyService.reply(map);
		
		return "redirect:../replyList";
		
	}
	
	@RequestMapping("/replyList")
	public ModelAndView replyList(@RequestParam String boardno , ModelAndView mav) {
		
		List<Board_repDTO> list = replyService.replyList(boardno);
		mav.addObject("list", list);
		mav.setViewName("boardView");
		
		System.out.println("댓글 목록..:"+ list);
		
		return mav;
		
		
	}
	
	
	
	

}
