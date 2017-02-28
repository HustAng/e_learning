package com.ang.elearning.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.stereotype.Service;

import com.ang.elearning.dao.CourseOrderMapper;
import com.ang.elearning.dao.UserMapper;
import com.ang.elearning.po.Course;
import com.ang.elearning.po.CourseOrder;
import com.ang.elearning.po.CourseOrderExample;
import com.ang.elearning.po.User;
import com.ang.elearning.po.UserExample;
import com.ang.elearning.po.UserExample.Criteria;
import com.ang.elearning.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {

	// 推荐使用@Resource而不是@Autowired
	@Resource
	private UserMapper userDao;
	
	@Resource
	private CourseOrderMapper courseOrderDao;

	@RequiresRoles({ "user" })
	@Override
	public User getUserById(int id) {
		return userDao.selectByPrimaryKey(id);
	}

	@Override
	public User getUserByEmail(String email) {
		User user = null;
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		criteria.andEmailEqualTo(email);
		List<User> userList = userDao.selectByExample(example);
		if (userList.size() != 0)
			user = userList.iterator().next();
		return user;
	}


	@Override
	public void addUser(User user, String birthStr) {
		try {
			user.setRoleId(1);
			user.setBirth(new SimpleDateFormat("yyyy-MM-dd").parse(birthStr));
			user.setBalance((float) 0);
			String hashAlgorithmName = "MD5";
			Object salt = user.getEmail();
			Object credentials = user.getPassword();
			int hashIterations = 1024;
			Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
			user.setPassword(result.toString());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		userDao.insert(user);
	}

	@Override
	public List<User> getAllUsers() {
		List<User> users = null;
		UserExample example = new UserExample();
		users = userDao.selectByExample(example);
		return users;
	}

	@Override
	public void deleteUserById(int id) {
		userDao.deleteByPrimaryKey(id);
	}
	
	@Override
	public void updateUser(User user) {
		userDao.updateByPrimaryKey(user);
	}

}
