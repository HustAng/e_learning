package com.ang.elearning.dao;

import com.ang.elearning.po.Course_User;
import com.ang.elearning.po.Course_UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Course_UserMapper {
    int countByExample(Course_UserExample example);

    int deleteByExample(Course_UserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Course_User record);

    int insertSelective(Course_User record);

    List<Course_User> selectByExample(Course_UserExample example);

    Course_User selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Course_User record, @Param("example") Course_UserExample example);

    int updateByExample(@Param("record") Course_User record, @Param("example") Course_UserExample example);

    int updateByPrimaryKeySelective(Course_User record);

    int updateByPrimaryKey(Course_User record);
}