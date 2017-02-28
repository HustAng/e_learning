package com.ang.elearning.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ang.elearning.dao.CourseMapper;
import com.ang.elearning.po.Course;
import com.ang.elearning.service.ICourseOrderService2;

@Service("courseorderService2")
public class ICourseOrderServiceImpl implements ICourseOrderService2{

	@Resource
	private CourseMapper courseDao;
	
	@Override
	public List<Course> getCourseByUserId(int user_id) {
		return courseDao.getCourseByUserId(user_id);
	}


}
