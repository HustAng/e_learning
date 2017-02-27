package com.ang.elearning.service;

import java.util.List;

import com.ang.elearning.po.Course;
import com.ang.elearning.po.User;

public interface IUserService {
	
	public User getUserById(int id);
	
	public User getUserByEmail(String email);
	
	
}
