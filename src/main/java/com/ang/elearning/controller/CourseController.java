package com.ang.elearning.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ang.elearning.po.Course;
import com.ang.elearning.service.ICourseService;


@Controller
@RequestMapping("/course")
public class CourseController {
	@Resource
	private ICourseService courseService;
	@RequestMapping(value="/getAllCourseByTypeId/{typeId}",method=RequestMethod.GET)
	public ModelAndView getAllCourse(@PathVariable("typeId")int typeId)
	{
		ModelAndView modelAndView=new ModelAndView("Course/CourseList");
		List<Course> list=courseService.findCourseByType(typeId);
		modelAndView.addObject("courseList",list);
		return modelAndView;
	}
	public ModelAndView BeforeAddCourse()
	{
		ModelAndView modelAndView=new ModelAndView("Course/AddCourse");
		//List<Course> list=courseService.findCourseByType(typeId);
		//modelAndView.addObject("courseList",list);
		return modelAndView;
	} 
	

}
