package com.ang.elearning.serviceTest;


import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ang.elearning.po.User;
import com.ang.elearning.service.IUserService;

public class TestUserService1 {
	
	private IUserService userService;
	
	@Before
	public void init(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring-mybatis.xml");
		userService = (IUserService) ctx.getBean("userService");
	}

	@Test
	public void test() {
		User user = userService.getUserById(1);
		System.out.println(user);
	}
	

}
