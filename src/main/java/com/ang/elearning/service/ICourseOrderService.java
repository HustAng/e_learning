package com.ang.elearning.service;

import java.util.List;

import com.ang.elearning.po.Course;
import com.ang.elearning.po.CourseOrder;

public interface ICourseOrderService {

	
	
	
	public List<CourseOrder> getCourseOrder(int userId, int courseId, String status);
	
	public List<CourseOrder> getCourseOrder(int userId, String status);
}
