package com.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class WeController {

	@RequestMapping(value = "/joinUI")
	public String test() {
		System.out.println("WeController");
		
		return "joinUI";
	}
}
