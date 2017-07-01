package com.kr.dingerlab.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.kr.dingerlab.model.TestModel;

public interface TestMapper {

	//test 관련
	@Insert("INSERT INTO simple_comment(stext) VALUES(#{stext})")
	public void insertTest(TestModel testModel) throws Exception;
	
	@Select("SELECT * FROM CharacterList")
	public List<TestModel> selectTest() throws Exception;
	
	public TestModel findTest() throws Exception;
}
