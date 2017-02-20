package com.ang.elearning.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ang.elearning.dao.CourseMapper;
import com.ang.elearning.po.Course;
import com.ang.elearning.po.CourseExample;
import com.ang.elearning.po.CourseExample.Criteria;
import com.ang.elearning.service.ICourseService;

@Service("courseService")
public class CourseServiceImpl implements ICourseService {
	@Resource
	private CourseMapper courseDao;

	//根据课程Id查找课程
	@Override
	public Course findCourseById(int id) {
		Course course=null;
		course=courseDao.selectByPrimaryKey(id);
		return course;
	}
	//根据课程大类型查找id
	@Override
	public List<Course> findCourseByType(int typeId) {
		List<Course> listCourse =new ArrayList<>();
		CourseExample example=new CourseExample();
		Criteria criteria= example.createCriteria();
		criteria.andTypeIdEqualTo(typeId);
		listCourse = courseDao.selectByExample(example);
		return listCourse;
	}
	//增加课程
	@Override
	public void add(Course course) {
		courseDao.insert(course);
	}
	//根据课程Id修改课程信息
	@Override
	public void updateById(Course course) {
		courseDao.updateByPrimaryKeySelective(course);
	}
	@Override
	public void deleteCourse(int id) {
		courseDao.deleteByPrimaryKey(id);
		
	}
	

}
