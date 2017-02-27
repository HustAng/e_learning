package com.ang.elearning.serviceTest;


import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ang.elearning.po.Course;
import com.ang.elearning.po.User;
import com.ang.elearning.service.ICourseOrderService;
import com.ang.elearning.service.ICourseService;
import com.ang.elearning.service.IUserService;

public class TestUserService1 {
	
	private IUserService userService;
	
	@Autowired
	private ICourseOrderService courseorderservice;
	
	private ICourseService courseService;
	
	@Before
	public void init(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring-mybatis.xml");
		userService = (IUserService) ctx.getBean("userService");
		courseorderservice =(ICourseOrderService) ctx.getBean("courseorderService");
		courseService =(ICourseService) ctx.getBean("courseService");
	}

	@Test
	public void test() {
		User user = userService.getUserById(1);
		System.out.println(user);
	}
	@Test
	public void test2(){
		List<Course> courses = courseorderservice.getCourseByUserId(1);
		System.out.println(courses.iterator().next());
	}
	
	@Test
	public void test3(){
		String name = courseService.getTeacherNameByCourseId(1);
		System.out.println(name);
	}
	
	
	@Test
	public void test4(){
		List<Course> courses1 = courseService.getCourseByDetailId(1);
		if(courses1!=null){
			System.out.println(courses1.iterator().next());
		}
	}

}
