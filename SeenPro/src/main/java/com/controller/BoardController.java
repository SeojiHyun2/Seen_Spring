package com.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;

	// 저장 누르면
	@RequestMapping(value = "/loginCheck/write")
    public String write(@RequestParam("title") String title, @RequestParam("content") String content, BoardDTO dto,
			HttpSession session) {

		MemberDTO mdto = (MemberDTO) session.getAttribute("login_mem");
		String userid = mdto.getUserid();

		dto.setTitle(title);
		dto.setContent(content);
		dto.setUserid(userid);

		System.out.println("보드:" + dto);
		boardService.write(dto);

		return "redirect:../boardList";

	}
	
	
	@RequestMapping("/boardList")
	public String boardList() {
		return null;
		
	}

	
	
	@RequestMapping("/boardView")
	public String boardView(@RequestParam("boardno") String boardno, Model model) {

		BoardDTO dto = boardService.boardView(boardno);
		// HashMap<String, Object> map2 = boardService.replyList(boardno);

		// model.addAttribute("replyList", map2);

		model.addAttribute("boardView", dto);

		return "boardViewUI";

	}

}
