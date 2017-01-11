package com.ang.elearning.dao;

import com.ang.elearning.po.User_Type;
import com.ang.elearning.po.User_TypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface User_TypeMapper {
    int countByExample(User_TypeExample example);

    int deleteByExample(User_TypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(User_Type record);

    int insertSelective(User_Type record);

    List<User_Type> selectByExample(User_TypeExample example);

    User_Type selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") User_Type record, @Param("example") User_TypeExample example);

    int updateByExample(@Param("record") User_Type record, @Param("example") User_TypeExample example);

    int updateByPrimaryKeySelective(User_Type record);

    int updateByPrimaryKey(User_Type record);
}