package com.ang.elearning.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ang.elearning.dao.Course_UserMapper;
import com.ang.elearning.po.Course_UserExample;
import com.ang.elearning.po.Course_UserExample.Criteria;
import com.ang.elearning.service.ICourse_UserService;

@Service("course_userService")
public class ICourse_UserServiceImpl implements ICourse_UserService{

	@Resource
	private Course_UserMapper course_userDao;
	
	@Override
	public int getCountById(int id) {
		Course_UserExample example = new Course_UserExample();
		Criteria criteria = example.createCriteria();
		criteria.andCourseIdEqualTo(id);
		return course_userDao.countByExample(example);
	}

}
