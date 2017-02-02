package com.ang.elearning.service.impl;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.ang.elearning.dao.RoleMapper;
import com.ang.elearning.po.Admin;
import com.ang.elearning.po.Role;
import com.ang.elearning.po.Teacher;
import com.ang.elearning.po.User;
import com.ang.elearning.service.IRoleService;

@Service("roleService")
public class RoleServiceImpl implements IRoleService {

	@Resource
	private RoleMapper roleDao;
	
	@Override
	public Role getRoleByUser(User user) {
		Role role = null;
		Integer roleId = user.getRoleId();
		role = roleDao.selectByPrimaryKey(roleId);
		return role;
	}

	@Override
	public Role getRoleByAdmin(Admin admin) {
		Role role = null;
		Integer roleId = admin.getRoleId();
		role = roleDao.selectByPrimaryKey(roleId);
		return role;
	}

	@Override
	public Role getRoleByTeacher(Teacher teacher) {
		Role role = null;
		Integer roleId = teacher.getRoleId();
		role = roleDao.selectByPrimaryKey(roleId);
		return role;
	}

}
