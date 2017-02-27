package com.ang.elearning.service;

import java.util.List;

import com.ang.elearning.po.Course;

public interface ICourseService {

	public int getMember(int id);
	
	public Course getCourseById(int id);
	
	public List<Course> getCourseByDetailId(int id);
	
	public List<Course> getFreeCourseByMember();
	
	public List<Course> getNotFreeCourseByMember();
	
	public Integer getMemberById(Integer course_id);
	
	public String getTeacherNameByCourseId(int id);
	
	public List<Course> getFreeCourseByMemberDetailId(int id);
	
	public List<Course> getNotFreeCourseByMemberDetailId(int id);
}
