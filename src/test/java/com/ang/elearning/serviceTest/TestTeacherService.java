package com.ang.elearning.serviceTest;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ang.elearning.po.Teacher;
import com.ang.elearning.service.ITeacherService;

public class TestTeacherService {
	@Autowired
	private ITeacherService service;
	@Before
	public void init(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring-mybatis.xml");
		service = (ITeacherService) ctx.getBean("teacherService");
	}
	@Test
	public void testGetAllTeacher()
	{
		List<Teacher> list=service.getAllTeacher();
		for(Teacher t:list)
		System.out.println(t);
	}

}
