package com.ang.elearning.po.sub;

import com.ang.elearning.po.Course;

public class SUB_Course extends com.ang.elearning.po.Course {

	private Course course;
	
	private int courseMember;

	public int getCourseMember() {
		return courseMember;
	}

	public void setCourseMember(int courseMember) {
		this.courseMember = courseMember;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}
	
	
}
