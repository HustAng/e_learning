package com.ang.elearning.serviceTest;

import javax.annotation.Resource;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ang.elearning.po.User;
import com.ang.elearning.service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class TestUserService2 {

	@Resource
	private IUserService userService;
	
	@Test
	public void test(){
		User user = userService.getUserById(1);
		System.out.println(user);
	}
}
