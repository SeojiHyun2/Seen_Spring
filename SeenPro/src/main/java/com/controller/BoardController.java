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

import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;

	
	//board로 이동하기
	@RequestMapping("/board")
	public ModelAndView board() {
		
		List<BoardDTO> list = boardService.listAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list );
		mav.setViewName("board");
		
		return mav;
	}
	
	
	
	
	
	// 저장 누르면
	@RequestMapping(value = "/loginCheck/write")
    public String write(@RequestParam("title") String title, @RequestParam("content") String content, BoardDTO dto,
			HttpSession session) {

		MemberDTO mdto = (MemberDTO) session.getAttribute("login_mem");
		String userid = mdto.getUserid();

		dto.setTitle(title);
		dto.setContent(content);
		dto.setUserid(userid);

		boardService.write(dto);
		System.out.println("boardDTO:" + dto);

		
		return "redirect:../board";

	}
	
	
	
	@RequestMapping("/boardList")
	public ModelAndView boardList(@RequestParam("searchName") String searchName,
			@RequestParam("searchValue") String searchValue) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("searchName", searchName);
		map.put("searchValue", searchValue);
		
		List<BoardDTO> list = boardService.boardList(map);
		
		
		System.out.println("List"+list);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("board");
		
		return mav;
		
	}

	
	
	@RequestMapping("/boardRetrieve")
	public ModelAndView boardView(@RequestParam("boardno") String boardno, Model model) {

		BoardDTO dto = boardService.boardView(boardno);
	
		ModelAndView mav = new ModelAndView();

		mav.addObject("retrieve", dto);
		mav.setViewName("boardView");

		return mav;

	}

}
