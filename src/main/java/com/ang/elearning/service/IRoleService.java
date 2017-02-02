package com.ang.elearning.service;

import com.ang.elearning.po.Admin;
import com.ang.elearning.po.Role;
import com.ang.elearning.po.Teacher;
import com.ang.elearning.po.User;

public interface IRoleService {
	
	public Role getRoleByUser(User user);
	
	public Role getRoleByAdmin(Admin admin);
	
	public Role getRoleByTeacher(Teacher teacher);
}
