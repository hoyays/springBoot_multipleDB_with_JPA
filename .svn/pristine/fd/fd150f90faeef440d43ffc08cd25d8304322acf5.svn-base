package com.jpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jpa.dto.H2DB.H2dbDto;

@Controller
public class H2BoardController {

	/**
	 * 리스트
	 */
	@RequestMapping("/h2/list")
	public String h2List() {
		return "/h2Board/list";
	}
	
	
	
	/**
	 * 쓰기 Form
	 */
	@RequestMapping("/h2/write")
	public String h2Write() {
		return "/h2Board/write";
	}
	
	
	/**
	 * 글쓰기 등록
	 */
	@RequestMapping("/h2/save")
	public String save(H2dbDto h2Dto) {
		
		System.out.println("con, title : "+h2Dto.getTitle());
		System.out.println("con, writer : "+h2Dto.getWriter());
		System.out.println("con, contents : "+h2Dto.getContents());
		
		
		return null;
	}
	
}
