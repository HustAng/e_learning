package com.ang.elearning.service;

import java.util.List;

import com.ang.elearning.po.Course;

public interface ICourseService {
	//根据课程id查找课程
	public Course findCourseById(int id);
	//根据课程大类型查找课程
	public List<Course> findCourseByType(int typeId);
	//增加课程
	public void add(Course course);
	//根绝Id修改课程信息
	public void updateById(Course course);
	//根据Id删除课程
	public void deleteCourse(int id);
}
