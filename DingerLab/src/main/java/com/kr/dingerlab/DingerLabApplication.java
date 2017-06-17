package com.kr.dingerlab;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@SpringBootApplication
@EnableAutoConfiguration
@MapperScan(value={"com.kr.dingerlab.mapper"})
public class DingerLabApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplicationBuilder applicationBuilder = 
				new SpringApplicationBuilder(DingerLabApplication.class);
		
		SpringApplication application = applicationBuilder.build();
		application.run(args);
//		SpringApplication.run(DingerLabApplication.class, args);
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		// TODO Auto-generated method stub
		return builder.sources(DingerLabApplication.class);
	}

	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		sessionFactory.setDataSource(dataSource);
		
		Resource[] resources = 
				new PathMatchingResourcePatternResolver()
				.getResources("classpath:mapper/*Mapper.xml");
		sessionFactory.setMapperLocations(resources);
		
		return sessionFactory.getObject();
	}
}
