package com.kr.dingerlab.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kr.dingerlab.mapper.MainMapper;
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
	
	
	public List<CharacterList> goToCharacterAction(){
		List<CharacterList> list = dao.getCharacterListAll(); 
		System.out.println(list);
		return list;
	}
	
}
