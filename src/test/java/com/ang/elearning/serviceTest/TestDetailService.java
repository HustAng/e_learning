package com.ang.elearning.serviceTest;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ang.elearning.po.Detail;
import com.ang.elearning.service.IDetailService;

public class TestDetailService {
	@Autowired
	private IDetailService detailService;
	@Before
	public void init(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring-mybatis.xml");
		detailService = (IDetailService) ctx.getBean("detailService");
	}
	@Test
	public void testGetAllDetail()
	{
		List<Detail> list=detailService.getALlDetail();
		for(Detail d:list)
		{
			System.out.println(d);
		}
	}
}
