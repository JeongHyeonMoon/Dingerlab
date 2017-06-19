package com.kr.dingerlab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DingerLabMainController {

	private static final String ABOUT_LIST[] = 
		{"Dinger's Lab", "Product", "Collaboration", "Education", "Awards"};
	private static final String CHARACTER_LIST[] =
		{"Magi", "Assi", "Poli", "Chefu", "etc"};


	@GetMapping("/")
	public String goMainPage(){
		System.out.println("im in goMainPage");

		return "index";
	}
	
	@GetMapping("/about")
	public String goAboutUsPage(Model model){
		model.addAttribute("categoryList",ABOUT_LIST);
		return "about";
	}
	
	@GetMapping("/character")
	public String goCharacterPage(Model model){
		model.addAttribute("categoryList",CHARACTER_LIST);
		return "character";
	}
}
