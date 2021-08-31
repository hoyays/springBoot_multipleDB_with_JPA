package com.jpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HeaderFooterController {

	@RequestMapping("/header")
	public String header() {
		return "/header";
	}
}
