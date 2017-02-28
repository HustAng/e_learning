package com.ang.elearning.service;

import java.util.List;

import com.ang.elearning.po.Teacher;

public interface ITeacherService {
	
	public Teacher getTeacherByEmail(String email);
	public List<Teacher> getAllTeacher();
}
