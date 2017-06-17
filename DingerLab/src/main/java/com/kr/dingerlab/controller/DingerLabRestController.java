package com.kr.dingerlab.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class DingerLabRestController {
	
	



	@GetMapping
	public String test(){
		System.out.println("im in test!!");
		System.out.println("test!!");
		return "test!";
	}
}
