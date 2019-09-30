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
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@Autowired
	Board_repService replyService;
	


	// board로 이동하기
	@RequestMapping("/board")
	public ModelAndView board() {

		List<BoardDTO> list = boardService.listAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list_a", list);
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

	// 검색해서 나오는 list
	@RequestMapping("/boardList")
	public ModelAndView boardList(@RequestParam("searchName") String searchName,
			@RequestParam("searchValue") String searchValue) {

		HashMap<String, String> map = new HashMap<String, String>();
		map.put("searchName", searchName);
		map.put("searchValue", searchValue);

		List<BoardDTO> list = boardService.boardList(map);

		System.out.println("List" + list);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list_a", list);
		mav.setViewName("board");

		return mav;

	}

	// 게시글 상세히 보기
	@RequestMapping("/boardRetrieve")
	public ModelAndView boardView(@RequestParam("boardno") int boardno, Board_repDTO r_dto,
			ModelAndView mav) {

		BoardDTO dto = boardService.boardView(boardno);
  
        r_dto.setBoardno(boardno);
        
        List<Board_repDTO> list = (List<Board_repDTO>)replyService.boardView_rep(boardno);

		System.out.println("보드리트라이브에 보드넘: "+boardno);
		System.out.println(dto);
		System.out.println(list);
		
		mav.addObject("retrieve", dto);
		mav.addObject("repInfo", list);
		mav.setViewName("boardView");

		return mav;

	}

	// 글 수정하기
	@RequestMapping("loginCheck/update")
	public String update(@RequestParam("boardno") String boardno, @RequestParam("title") String title,
			@RequestParam("content") String content, HttpSession session, BoardDTO dto, RedirectAttributes attr) {

		MemberDTO mdto = (MemberDTO) session.getAttribute("login_mem");
		String userid = mdto.getUserid();

		dto.setBoardno(Integer.parseInt(boardno));
		dto.setTitle(title);
		dto.setContent(content);
		dto.setUserid(userid);

		boardService.update(dto);
		System.out.println("수정화면:" + dto);

		return "redirect:../board";

	}

	// 게시물 삭제하기
	@RequestMapping("loginCehck/delete")
	public String delete(@RequestParam("boardno") String boardno, HttpSession session) {

		MemberDTO mdto = (MemberDTO) session.getAttribute("login_mem");

		boardService.delete(boardno);

		return "redirect:../board";

	}
	
	
	
	// 댓글
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
		
	     
		return "redirect:../boardRetrieve";
		
	}
	
	@RequestMapping("/replyList")
	public ModelAndView replyList(@RequestParam String boardno, ModelAndView mav,RedirectAttributes attr) {
		
		System.out.println("리플리리스트에 보드넘: "+boardno);
		List<Board_repDTO> list = replyService.replyList(boardno);
		mav.addObject("rere", list);
		mav.setViewName("boardView");
		System.out.println("댓글 목록..:"+ list);
		
		return mav;
		
		
	}
	
	
	
	

}
