package com.kr.dingerlab.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kr.dingerlab.service.DingerLabMainService;

@RestController
@RequestMapping("/api")
public class DingerLabRestController {
	
	@Autowired
	private DingerLabMainService mainService;
	
	public DingerLabMainService getMainService() {
		return mainService;
	}
	
	public void setMainService(DingerLabMainService mainService) {
		this.mainService = mainService;
	}



	@GetMapping
	public String test(){
		System.out.println("im in test!!");
		System.out.println("test!!");
		return "test!";
	}
	
	@GetMapping("/detail/{id}")
	public HashMap<String, Object> getCharacterDetailInfo(
			@PathVariable(name="id") int id){
		return mainService.getCharacterDetailInfo(id);
	}
}
