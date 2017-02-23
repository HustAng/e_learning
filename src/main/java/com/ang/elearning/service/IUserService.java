package com.ang.elearning.service;

import java.util.List;

import com.ang.elearning.po.User;

public interface IUserService {
	
	public User getUserById(int id);
	
	public List<User> getAllUsers();
	
	public User getUserByEmail(String email);
	
	public void addUser(User user,String birthStr);
	
	public void deleteUserById(int id);
	
	public void updateUser(User user);
	
}
