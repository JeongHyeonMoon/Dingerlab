package dingerlab.connect.api;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.kr.dingerlab.DingerLabApplication;
import com.kr.dingerlab.mapper.TestMapper;
import com.kr.dingerlab.model.TestModel;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = DingerLabApplication.class)
public class DingerLabApplicationTests {

	@Autowired
	private SqlSessionFactory sqlSession;
	
	@Autowired
	private TestMapper mapper;
	
	private Logger logger = LoggerFactory.getLogger(DingerLabApplicationTests.class);

	@Test
	public void test(){
		System.out.println(sqlSession);
	}
	
	@Test
	public void selectTest() throws Exception{
		
		List<TestModel> list = mapper.selectTest();
		System.out.println(list);
	}
	
	@Test
	public void findTest() throws Exception{
		TestModel model = mapper.findTest();
		System.out.println(model);
	}

}
