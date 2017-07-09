package com.kr.dingerlab.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kr.dingerlab.service.DingerLabMainService;

@Controller
public class DingerLabMainController {

	private static final String ABOUT_LIST[] = 
		{"Dinger's Lab", "Product", "Collaboration", "Education", "Awards"};
	private static final String MARKET_LIST[] =
		{"Offline", "Online"};
	private static final String MEDIA_LIST[] =
		{"Video Clips", "Blog/SNS"};

	
	@Autowired
	private DingerLabMainService service;
	
	public DingerLabMainService getService() {
		return service;
	}

	public void setService(DingerLabMainService service) {
		this.service = service;
	}

	@GetMapping("/")
	public String goMainPage(Model model){
		System.out.println("im in goMainPage");
		List<String> characterImgUrl = service.getAllCharacterUrl();
		model.addAttribute("photos",characterImgUrl);
		return "index";
	}
	
	@GetMapping("/about")
	public String goAboutUsPage(Model model){
		model.addAttribute("categoryList",ABOUT_LIST);
		return "about";
	}
	
	@GetMapping("/character")
	public String goCharacterPage(Model model){
		
		model.addAttribute("characterNameIdList", service.getAllCharactersNameId());
		model.addAttribute("characterList", service.goToCharacterAction());
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
