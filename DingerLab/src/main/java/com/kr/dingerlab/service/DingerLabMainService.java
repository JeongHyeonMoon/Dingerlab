package com.kr.dingerlab.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kr.dingerlab.mapper.MainMapper;
import com.kr.dingerlab.model.CharacterDetail;
import com.kr.dingerlab.model.CharacterList;

@Service
public class DingerLabMainService {

	@Autowired
	private MainMapper dao;
	
	public DingerLabMainService(){}

	public MainMapper getDao() {
		return dao;
	}

	public void setDao(MainMapper dao) {
		this.dao = dao;
	}
	
	public List<String> getAllCharacterUrl(){
		List<String> photos = dao.getAllCharacterList();
		return photos;
	}
	
	
	public List<CharacterList> goToCharacterAction(){
		List<CharacterList> list = dao.getCharacterListAll(); 
		System.out.println(list);
		return list;
	}

	public HashMap<String, Object> getCharacterDetailInfo(int id) {
		
		HashMap<String, Object> charDetail = new HashMap<>(); 
		CharacterDetail detail = dao.getCharacterDetailInfo(id);
		String imagesList[] = dao.getCharacterImages(id);
		
		charDetail.put("contents", detail);
		charDetail.put("images", imagesList);
		
		return charDetail;
	}
	
}
