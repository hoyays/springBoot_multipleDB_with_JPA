package com.jpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OracleBoardController {

	@RequestMapping("oracle/list")
	public String oracleList() {
		return "/oracleBoard/list";
	}
	
	@RequestMapping("oracle/write")
	public String oracleWrite() {
		return "/oracleBoard/write";
	}
	
}
