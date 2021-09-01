package com.jpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class H2BoardController {

	@RequestMapping("/h2/list")
	public String h2List() {
		return "/h2Board/list";
	}
	
	@RequestMapping("/h2/write")
	public String h2Write() {
		return "/h2Board/write";
	}
	
}
