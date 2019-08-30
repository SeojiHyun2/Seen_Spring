package com.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class WeController {

	@RequestMapping(value = "/joinUI")
	public String test() {
		System.out.println("WeController");
		
		return "joinUI";
	}
	
	@RequestMapping(value = "/joinArtist")
	public String joinArtist() {
		System.out.println("joinArtist");
		
		
		
		
		return "main";
	}
	
	
	
	
	
}
