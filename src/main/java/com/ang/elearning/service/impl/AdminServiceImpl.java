package com.ang.elearning.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ang.elearning.dao.AdminMapper;
import com.ang.elearning.po.Admin;
import com.ang.elearning.po.AdminExample;
import com.ang.elearning.po.AdminExample.Criteria;
import com.ang.elearning.service.IAdminService;

@Service("adminService")
public class AdminServiceImpl implements IAdminService {

	@Resource
	private AdminMapper adminDao;

	@Override
	public Admin getAdminByUsername(String username) {
		Admin admin = null;
		AdminExample example = new AdminExample();
		Criteria criteria = example.createCriteria();
		criteria.andUsernameEqualTo(username);
		List<Admin> adminList = adminDao.selectByExample(example);
		if (adminList.size() != 0)
			admin = adminList.iterator().next();
		return admin;
	}

}
