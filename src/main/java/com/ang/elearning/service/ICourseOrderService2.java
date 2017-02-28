package com.ang.elearning.service;

import java.util.List;

import com.ang.elearning.po.Course;

public interface ICourseOrderService2 {

	public List<Course> getCourseByUserId(int user_id);
}
