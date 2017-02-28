package com.ang.elearning.serviceTest;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.scheduling.concurrent.ConcurrentTaskScheduler;

import com.ang.elearning.po.Course;
import com.ang.elearning.service.ICourseService;

public class TestCourseService {
	@Autowired
	private ICourseService courseService;
	@Before
	public void init(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring-mybatis.xml");
		courseService = (ICourseService) ctx.getBean("courseService");
	}
	//根据课程ID查找课程
	@Test
	public void testFindCourseById() {
		Course course=courseService.findCourseById(1);
		System.out.println(course.getName());
	}
	//根据课程名称查找
	@Test
	public void testFindCourseByName() {
		List<Course> course=courseService.findCourseByName("四级");
		System.out.println(course.size());
	}
	//根据课程类型查找课程
	@Test
	public void testFindCourse()
	{
		List<Course> listCourse=courseService.findCourseByType(1);
		System.out.println(listCourse.size());
	}
	//增加课程
	@Test
	public void insertCourse()
	{
		Course course=new Course();
		course.setName("英语四级阅读通关训练");
		course.setTypeId(1);
		course.setProfile("英语四级阅读通关训练");
		Calendar c= Calendar.getInstance();
		c.setTime(new Date());
		course.setStarttime(c.getTime());
		c.add(Calendar.DATE, 20);
		course.setEndtime(c.getTime());
		course.setPrice(499f);
		course.setPeriod(32);
		course.setTeacherId(1);
		course.setDetailId(3);
		courseService.add(course);
	}
	//更改课程信息
	@Test
	public void update()
	{
		Course course=new Course();
		course.setId(2);
		course.setPrice(300f);
		//course.setName("英语四级写作通关训练");
		courseService.updateById(course);
	}
	@Test
	public void selectAllCourse()
	{
		List<Course> list=courseService.findAllCourse();
		System.out.println(list.size());
	}

}
