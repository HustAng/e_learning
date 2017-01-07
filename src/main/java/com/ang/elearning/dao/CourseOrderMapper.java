package com.ang.elearning.dao;

import com.ang.elearning.po.CourseOrder;
import com.ang.elearning.po.CourseOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CourseOrderMapper {
    int countByExample(CourseOrderExample example);

    int deleteByExample(CourseOrderExample example);

    int deleteByPrimaryKey(Long id);

    int insert(CourseOrder record);

    int insertSelective(CourseOrder record);

    List<CourseOrder> selectByExample(CourseOrderExample example);

    CourseOrder selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") CourseOrder record, @Param("example") CourseOrderExample example);

    int updateByExample(@Param("record") CourseOrder record, @Param("example") CourseOrderExample example);

    int updateByPrimaryKeySelective(CourseOrder record);

    int updateByPrimaryKey(CourseOrder record);
}