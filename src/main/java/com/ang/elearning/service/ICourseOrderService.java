package com.ang.elearning.service;

import java.util.List;

import com.ang.elearning.po.Course;

public interface ICourseOrderService {

	public List<Course> getCourseByUserId(int id);
}
