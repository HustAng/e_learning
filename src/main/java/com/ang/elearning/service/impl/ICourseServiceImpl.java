package com.ang.elearning.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ang.elearning.dao.CourseMapper;
import com.ang.elearning.po.Course;
import com.ang.elearning.po.CourseExample;
import com.ang.elearning.po.CourseExample.Criteria;
import com.ang.elearning.service.ICourseService;

@Service("courseService")
public class ICourseServiceImpl implements ICourseService{

	@Resource
	private CourseMapper courseDao;
	
	
	@Override
	public Course getCourseById(int id) {
		return courseDao.selectByPrimaryKey(id);
	}
	
	public String getProfileById(int id){
		return courseDao.selectByPrimaryKey(id).getProfile();
	}

	@Override
	public List<Course> getCourseByDetailId(int detailId) {
		Course course = null;
		CourseExample example = new CourseExample();
		Criteria criteria = example.createCriteria();
		criteria.andDetailIdEqualTo(detailId);
		List<Course> courseList = courseDao.selectByExample(example);
		return courseList;
	}

	@Override
	public List<Course> getFreeCourseByMember() {
		return courseDao.getFreeCourseByMember();
	}
	
	@Override
	public Integer getMemberById(Integer course_id){
		return courseDao.getMemberById(course_id);
	}

	@Override
	public int getMember(int id) {
		CourseExample example = new CourseExample();
		Criteria criteria = example.createCriteria();
		criteria.andIdEqualTo(id);
		return courseDao.countByExample(example);
	}


	@Override
	public List<Course> getNotFreeCourseByMember() {
		return courseDao.getNotFreeCourseByMember();
	}
	
	public List<Course> getNotFreeCourse(){
		CourseExample example = new CourseExample();
		Criteria criteria = example.createCriteria();
		criteria.andPriceNotEqualTo(0.0f);
		List<Course> courseList = courseDao.selectByExample(example);
		return courseList;
	}

	@Override
	public String getTeacherNameByCourseId(int id) {
		return courseDao.getTeacherNameByCourseId(id);
	}

	@Override
	public List<Course> getFreeCourseByMemberDetailId(int id) {
		return courseDao.getFreeCourseByMemberDetailId(id);
	}

	@Override
	public List<Course> getNotFreeCourseByMemberDetailId(int id) {
		return courseDao.getNotFreeCourseByMemberDetailId(id);
	}


}
