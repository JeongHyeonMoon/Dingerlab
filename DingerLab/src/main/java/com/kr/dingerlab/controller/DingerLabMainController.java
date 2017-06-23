package com.kr.dingerlab.controller;

import java.util.Collections;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DingerLabMainController {

	private static final String ABOUT_LIST[] = 
		{"Dinger's Lab", "Product", "Collaboration", "Education", "Awards"};
	private static final String CHARACTER_LIST[] =
		{"Magi", "Assi", "Poli", "Chefu", "etc"};
	private static final String MARKET_LIST[] =
		{"Offline", "Online"};
	private static final String MEDIA_LIST[] =
		{"Video Clips", "Blog/SNS"};


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
	
	@GetMapping("/market")
	public String goMarketPage(Model model){
		model.addAttribute("categoryList", MARKET_LIST);
		return "market";
	}
	
	@GetMapping("/media")
	public String goMediaPage(Model model){
		model.addAttribute("categoryList",MEDIA_LIST);
		return "media";
	}
	
	@GetMapping("/event")
	public String goEventPage(Model model){
		model.addAttribute("categoryList", Collections.EMPTY_LIST);
		return "event";
	}
	
	@GetMapping("/contact")
	public String goContactPage(Model model){
		model.addAttribute("categoryList", Collections.EMPTY_LIST);
		return "contact";
	}
}
