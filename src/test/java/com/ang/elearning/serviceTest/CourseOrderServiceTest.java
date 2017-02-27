package com.ang.elearning.serviceTest;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ang.elearning.po.CourseOrder;
import com.ang.elearning.service.ICourseOrderService;

public class CourseOrderServiceTest {
	@Autowired
	private ICourseOrderService courseOrderService;
	@Before
	public void init(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring-mybatis.xml");
		courseOrderService = (ICourseOrderService) ctx.getBean("courseOrderService");
	}
	@Test
	public void getCourseOrder()
	{
		List<CourseOrder> list= courseOrderService.getCourseOrder(1, 1, "0");
		System.out.println(list.size());
	}
}

