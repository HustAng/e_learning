package com.ang.elearning.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ang.elearning.dao.CourseOrderMapper;
import com.ang.elearning.po.Course;
import com.ang.elearning.po.CourseOrder;
import com.ang.elearning.po.CourseOrderExample;
import com.ang.elearning.po.CourseOrderExample.Criteria;
import com.ang.elearning.service.ICourseOrderService;

@Service("courseOrderService")
public class CourseOrderServiceImpl implements ICourseOrderService {
	@Resource
	public CourseOrderMapper courseOrderDao;
	
	
	
	
	@Override
	//查询一个
	public List<CourseOrder> getCourseOrder(int userId, int courseId, String status) {
		List<CourseOrder> courseOrderList=new ArrayList<CourseOrder>();
		CourseOrderExample example=new CourseOrderExample();
		Criteria criteria=example.createCriteria();
		criteria.andUserIdEqualTo(userId);
		criteria.andCourseIdEqualTo(courseId);
		criteria.andReserve1EqualTo("0");
		courseOrderList=courseOrderDao.selectByExample(example);
		return courseOrderList;
	}
	@Override
	//查询一批
	public List<CourseOrder> getCourseOrder(int userId, String status) {
		List<CourseOrder> courseOrderList=new ArrayList<CourseOrder>();
		CourseOrderExample example=new CourseOrderExample();
		Criteria criteria=example.createCriteria();
		criteria.andUserIdEqualTo(userId);
		criteria.andReserve1EqualTo("0");
		courseOrderList=courseOrderDao.selectByExample(example);
		return courseOrderList;
	}


}
