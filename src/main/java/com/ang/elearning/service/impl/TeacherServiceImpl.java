package com.ang.elearning.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ang.elearning.dao.TeacherMapper;
import com.ang.elearning.po.Teacher;
import com.ang.elearning.po.TeacherExample;
import com.ang.elearning.po.TeacherExample.Criteria;
import com.ang.elearning.service.ITeacherService;

@Service("teacherService")
public class TeacherServiceImpl implements ITeacherService {
	
	@Resource
	private TeacherMapper teacherDao;

	@Override
	public Teacher getTeacherByEmail(String email) {
		Teacher teacher = null;
		TeacherExample example = new TeacherExample();
		Criteria criteria = example.createCriteria();
		criteria.andEmailEqualTo(email);
		List<Teacher> teacherList = teacherDao.selectByExample(example);
		if(teacherList.size()!=0)
			teacher = teacherList.iterator().next();
		return teacher;
	}

	@Override
	public List<Teacher> getAllTeacher() {
		TeacherExample example = new TeacherExample();
		Criteria criteria = example.createCriteria();
		List<Teacher> teacherList = teacherDao.selectByExample(example);
		return teacherList;
	}

	

}
