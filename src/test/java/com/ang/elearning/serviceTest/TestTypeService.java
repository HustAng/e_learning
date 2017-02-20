package com.ang.elearning.serviceTest;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ang.elearning.po.Type;
import com.ang.elearning.service.ITeacherService;
import com.ang.elearning.service.ITypeService;

public class TestTypeService {
	@Autowired
	private ITypeService service;
	@Before
	public void init(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring-mybatis.xml");
		service = (ITypeService) ctx.getBean("typeService");
	}
	@Test
	public void getAllType()
	{
		List<Type> list=service.getAllType();
		for(Type t:list)
		{
			System.out.println(t.getName());
		}
	}
}
