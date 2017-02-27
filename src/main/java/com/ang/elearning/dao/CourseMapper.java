package com.ang.elearning.dao;

import com.ang.elearning.po.Course;
import com.ang.elearning.po.CourseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CourseMapper {
    int countByExample(CourseExample example);

    int deleteByExample(CourseExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Course record);

    int insertSelective(Course record);

    List<Course> selectByExample(CourseExample example);

    Course selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Course record, @Param("example") CourseExample example);

    int updateByExample(@Param("record") Course record, @Param("example") CourseExample example);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);
    
    List<Course> getCourseByUserId(Integer user_id);
    
    List<Course> getFreeCourseId();
    
    List<Course> getFreeCourseByMember();
    
    List<Course> getNotFreeCourseByMember();
    
    List<Course> getFreeCourseByMemberDetailId(int id);
    
    List<Course> getNotFreeCourseByMemberDetailId(int id);
    
    String getTeacherNameByCourseId(int id);
    
    int getMemberById(int course_id);
}