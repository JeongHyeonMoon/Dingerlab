package com.kr.dingerlab.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.kr.dingerlab.model.CharacterList;

@Mapper
public interface MainMapper {

	@Select("SELECT * FROM CharacterList;")
	List<CharacterList> getCharacterListAll();
	
}
