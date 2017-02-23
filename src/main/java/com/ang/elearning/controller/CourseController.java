package com.ang.elearning.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ang.elearning.po.Course;
import com.ang.elearning.po.Detail;
import com.ang.elearning.po.Teacher;
import com.ang.elearning.po.Type;
import com.ang.elearning.service.ICourseService;
import com.ang.elearning.service.IDetailService;
import com.ang.elearning.service.ITeacherService;
import com.ang.elearning.service.ITypeService;


@Controller
@RequestMapping("/course")
public class CourseController {
	@Resource
	private ICourseService courseService;
	@Resource
	private ITeacherService teacherService;
	@Resource
	private IDetailService detailService;
	@Resource
	private ITypeService typeService;
	@RequestMapping(value="/getAllCourse",method=RequestMethod.GET)
	public ModelAndView getAllCourse(HttpServletRequest request)
	{
		ModelAndView modelAndView=new ModelAndView("houtaiCourse/CourseManage");
		List<Course> list=courseService.findAllCourse();
		modelAndView.addObject("courseList",list);
		List<Teacher> teacherList=teacherService.getAllTeacher();
		List<Detail> detailList=detailService.getALlDetail();
		List<Type> typeList=typeService.getAllType();
		request.getSession().setAttribute("teacherListSession",teacherList);
		request.getSession().setAttribute("detailListSession",detailList);
		request.getSession().setAttribute("typeListSession",typeList);
		return modelAndView;
	}
	
	
	@RequestMapping(value="/getAllCourseByTypeId/{typeId}",method=RequestMethod.GET)
	public ModelAndView getAllCourse(@PathVariable("typeId")int typeId)
	{
		ModelAndView modelAndView=new ModelAndView("Course/CourseList");
		List<Course> list=courseService.findCourseByType(typeId);
		modelAndView.addObject("courseList",list);
		return modelAndView;
	}
	@RequestMapping(value="/BeforAddCourse",method=RequestMethod.GET)
	public ModelAndView BeforeAddCourse(HttpServletRequest request)
	{
		ModelAndView modelAndView=new ModelAndView("Course/AddCourse");
		List<Teacher> teacherList=teacherService.getAllTeacher();
		modelAndView.addObject("teacherList",teacherList);
		List<Detail> detailList=detailService.getALlDetail();
		modelAndView.addObject("detailList",detailList);
		List<Type> typeList=typeService.getAllType();
		modelAndView.addObject("typeList",typeList);
		request.getSession().setAttribute("teacherListSession",teacherList);
		request.getSession().setAttribute("detailListSession",detailList);
		request.getSession().setAttribute("typeListSession",typeList);
		return modelAndView;
	}
	@RequestMapping(value="/AddCourse")
	public ModelAndView AddCourse(@RequestParam("pic") CommonsMultipartFile pic,HttpServletRequest request)
	{
		String url=null;
		if(!pic.isEmpty())
		{
			try{
				url=System.getProperty("root")+"/WEB-INF/upload/"+UUID.randomUUID().toString();
				new File(url).mkdirs();
				pic.transferTo(new File(url+"/"+pic.getOriginalFilename()));
			} catch (Exception e) {
				System.out.println("文件上传出错");
				e.printStackTrace();
			}
		}
		DateFormat format=new SimpleDateFormat("yyyy-mm-dd");
		Course course=new Course();
		course.setImg(url+"/"+pic.getOriginalFilename());
		course.setName(request.getParameter("name"));
		course.setProfile(request.getParameter("profile"));
		course.setTypeId(Integer.valueOf(request.getParameter("typeId")));
		try {
			course.setStarttime(format.parse(request.getParameter("starttime")));
			course.setEndtime(format.parse(request.getParameter("endtime")));
		} catch (ParseException e) {
			System.out.println("时间转换出错");
			e.printStackTrace();
		}
		course.setPrice(Float.valueOf(request.getParameter("price")));
		course.setPeriod(Integer.valueOf(request.getParameter("period")));
		course.setTeacherId(Integer.valueOf(request.getParameter("teacherId")));
		course.setDetailId(Integer.valueOf(request.getParameter("detailId")));
		courseService.add(course);
		ModelAndView modelAndView=new ModelAndView("redirect:/course/getAllCourse");
		return modelAndView;
		
	}
	@RequestMapping(value="/UpdateCourse")
	public ModelAndView updateCourse(HttpServletRequest request)
	{
		DateFormat format=new SimpleDateFormat("yyyy-mm-dd");
		Course course=new Course();
		course.setId(Integer.valueOf(request.getParameter("id")));
		course.setName(request.getParameter("name"));
		course.setProfile(request.getParameter("profile"));
		course.setTypeId(Integer.valueOf(request.getParameter("typeId")));
		try {
			course.setStarttime(format.parse(request.getParameter("starttime")));
			course.setEndtime(format.parse(request.getParameter("endtime")));
		} catch (ParseException e) {
			System.out.println("时间转换出错");
			e.printStackTrace();
		}
		course.setPrice(Float.valueOf(request.getParameter("price")));
		course.setPeriod(Integer.valueOf(request.getParameter("period")));
		course.setTeacherId(Integer.valueOf(request.getParameter("teacherId")));
		course.setDetailId(Integer.valueOf(request.getParameter("detailId")));
		courseService.updateById(course);
		ModelAndView modelAndView=new ModelAndView("redirect:/course/getAllCourse");
		return modelAndView;
	}
	@RequestMapping("deleteCourse")
	public ModelAndView deleteCourseById(@RequestParam("Id") int id)
	{
		courseService.deleteCourse(id);
		ModelAndView modelAndView=new ModelAndView("redirect:/course/getAllCourse");
		return modelAndView;
	}
	

}
