package com.ang.elearning.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ang.elearning.po.Course;
import com.ang.elearning.service.ICourseOrderService2;
import com.ang.elearning.service.ICourse_UserService;
import com.ang.elearning.service.IICourseService;
import com.ang.elearning.service.IUserService;

@RequestMapping("/icourse")
@Controller
public class ICourseController {

	@Resource
	private IICourseService icourseservice;
	
	@Resource
	private IUserService userService;
	
	@Resource
	private ICourse_UserService course_userservice;
	
	@Resource
	private ICourseOrderService2 courseorderservice2;
	
	@RequestMapping(value="/getAll")
	public ModelAndView getAll(Map<String,Integer[]> map){
		List<Course> course1 = icourseservice.getCourseByDetailId(1);
		List<Course> course2 = icourseservice.getCourseByDetailId(2);
		List<Course> course3 = icourseservice.getCourseByDetailId(3);
		List<Course> course4 = icourseservice.getFreeCourseByMemberDetailId(1);
		List<Course> course5 = icourseservice.getNotFreeCourseByMemberDetailId(1);
		List<Course> course6 = icourseservice.getFreeCourseByMemberDetailId(2);
		List<Course> course7 = icourseservice.getNotFreeCourseByMemberDetailId(2);
		List<Course> course8 = icourseservice.getFreeCourseByMemberDetailId(3);
		List<Course> course9 = icourseservice.getNotFreeCourseByMemberDetailId(3);
		Integer[] courses1arr=new Integer[100];
		Integer[] courses2arr=new Integer[100];
		Integer[] courses3arr=new Integer[100];
		for(Course c:course1){
			courses1arr[c.getId()] = icourseservice.getMemberById(c.getId());
		}
		for(Course c:course2){
			courses2arr[c.getId()] = icourseservice.getMemberById(c.getId());
		}
		for(Course c:course3){
			courses3arr[c.getId()] = icourseservice.getMemberById(c.getId());
		}
		map.put("arr1",courses1arr);
		map.put("arr2",courses2arr);
		map.put("arr3",courses3arr);
		ModelAndView mv = new ModelAndView();
		mv.addObject("course1", course1);
		mv.addObject("course2", course2);
		mv.addObject("course3", course3);
		mv.addObject("course4", course4);
		mv.addObject("course5", course5);
		mv.addObject("course6", course6);
		mv.addObject("course7", course7);
		mv.addObject("course8", course8);
		mv.addObject("course9", course9);
		mv.setViewName("course/course");
		return mv;
	}
	
	@RequestMapping(value="/getShopCart")
	public ModelAndView getShopCart(@RequestParam(value="id") int id){
		ModelAndView mv = new ModelAndView();
		List<Course> courses = courseorderservice2.getCourseByUserId(id);
		mv.addObject("course", courses);
		mv.setViewName("course/shopcart");
		return mv;
	}
	
	@RequestMapping(value="/getOrder")
	public ModelAndView getOrder(@RequestParam(value="id") int id){
		ModelAndView mv = new ModelAndView();
		Course course = icourseservice.getCourseById(id);
		mv.addObject("course", course);
		mv.setViewName("course/order");
		return mv;
	}
	
	@RequestMapping(value="/getAllByDetailId",method=RequestMethod.GET)
	public ModelAndView getAllByDetailId(@RequestParam(value="id") int id,Map<String,Integer[]> map,Map<String,Integer> map1){
		List<Course> course = icourseservice.getCourseByDetailId(id);
		List<Course> courses1 = icourseservice.getCourseByDetailId(1);
		List<Course> courses2 = icourseservice.getCourseByDetailId(2);
		List<Course> courses3 = icourseservice.getCourseByDetailId(3);
		Integer[] courses1arr=new Integer[100];
		Integer[] courses2arr=new Integer[100];
		Integer[] courses3arr=new Integer[100];
		for(Course c:courses1){
			courses1arr[c.getId()] = icourseservice.getMemberById(c.getId());
		}
		for(Course c:courses2){
			courses2arr[c.getId()] = icourseservice.getMemberById(c.getId());
		}
		for(Course c:courses3){
			courses3arr[c.getId()] = icourseservice.getMemberById(c.getId());
		}
		map1.put("id", id);
		map.put("arr1",courses1arr);
		map.put("arr2",courses2arr);
		map.put("arr3",courses3arr);
		ModelAndView mv = new ModelAndView();
		mv.addObject("course", course);
		mv.addObject("course1", courses1);
		mv.addObject("course2", courses2);
		mv.addObject("course3", courses3);
		mv.setViewName("course/course_all");
		return mv;
	}
	
	@RequestMapping(value="/getVedio")
	public ModelAndView getVideo(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("course/course_play");
		return mv;
	}
	
	@RequestMapping(value="/getWord")
	public ModelAndView getWord(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("course/word");
		return mv;
	}
	
	@RequestMapping(value="/getCourse")
	public ModelAndView getCourse(@RequestParam(value="id",defaultValue="1") int id){
		Course course = icourseservice.getCourseById(id);
		int member = icourseservice.getMemberById(id);
		String name = icourseservice.getTeacherNameByCourseId(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("course",course);
		mv.addObject("member",member);
		mv.addObject("name",name);
		mv.setViewName("course/course_intro");
		return mv;
	}
	
	
	@RequestMapping(value="/getMain")
	public ModelAndView getMain(Map<String,Integer[]> map){
		Integer[] courses1arr=new Integer[100];
		Integer[] courses2arr=new Integer[100];
		List<Course> courses1 = icourseservice.getFreeCourseByMember();
		List<Course> courses2 = icourseservice.getNotFreeCourseByMember();
		for(Course c:courses1){
			courses1arr[c.getId()] = icourseservice.getMemberById(c.getId());
		}
		for(Course c:courses2){
			courses2arr[c.getId()] = icourseservice.getMemberById(c.getId());
		}
		map.put("arr1",courses1arr);
		map.put("arr2",courses2arr);
		ModelAndView mv = new ModelAndView();
    	mv.addObject("courses1",courses1);
    	mv.addObject("courses2",courses2);
		mv.setViewName("course/index");
		return mv;
	}
}

