package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dto.WorkDTO;
import com.service.MemberService;
import com.service.WorkService;

@Controller
public class MainController {
	
	@RequestMapping("/main")
	public String inputWorkUI() {
		return "main";
	}

	
}
