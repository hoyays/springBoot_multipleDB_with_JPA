package com.jpa.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jpa.dto.H2DB.H2dbDto;
import com.jpa.entity.H2DB.H2Board;
import com.jpa.repository.H2DB.H2DBRepo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class H2BoardController {
	
	//LoggerFactory를 통해 객체를 생성한 후 로그를 찍을 수 있다.
	//하지만!!! Lombok의 @Slf4j를 붙여주면 바로 사용가능하다. 단, 변수명은 log로 고정된다. 완전 편하다!!!!  
//	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	H2DBRepo repository;
	

	/**
	 * 리스트
	 */
	@RequestMapping("/h2/list")
	public String h2List(Model model) {
		
		log.info("////////////////////////////////////");
		log.info("//// H2 Board List    S T A R T ////");
		log.info("////////////////////////////////////");
		
		List<H2Board> listEntity = repository.findAll();
		H2dbDto boardDto = new H2dbDto();
		List<H2dbDto> listDto = new ArrayList<>();
		Map<String, Object> map = new HashMap<>();

		for(H2Board boardEntity : listEntity) {
			boardDto = boardEntity.toDto();
			listDto.add(boardDto);
		}

		map.put("listDto", listDto);
		model.addAttribute("map", map);
		
		return "/h2Board/list";
	}
	
	
	
	
	
	/**
	 * 상세페이지
	 */
	@RequestMapping("/h2/detail")
	@ResponseBody
	public H2dbDto h2Detail(int id) {
		
		H2dbDto boardDto = new H2dbDto();
		
		log.info("//////////////////////////////////////");
		log.info("//// H2 Board Detail    S T A R T ////");
		log.info("//////////////////////////////////////");
		
		Optional<H2Board> rowData = repository.findById(id);
		
		if(rowData.isPresent()) {
			H2Board boardEntity = rowData.get();
			boardDto = boardEntity.toDto();
		}
		return boardDto;
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
	public String save(H2dbDto boardDto) {
		
		log.info("/////////////////////////////////////////");
		log.info("////// H2 Board Write    S T A R T //////");
		log.info("/////////////////////////////////////////");
		
		H2Board boardEntity = boardDto.toEntity();
		repository.save(boardEntity);
		
		return "redirect:/h2/list";
	}
	
}
