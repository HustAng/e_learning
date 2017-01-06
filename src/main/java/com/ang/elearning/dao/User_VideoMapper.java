package com.ang.elearning.dao;

import com.ang.elearning.po.User_Video;
import com.ang.elearning.po.User_VideoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface User_VideoMapper {
    int countByExample(User_VideoExample example);

    int deleteByExample(User_VideoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(User_Video record);

    int insertSelective(User_Video record);

    List<User_Video> selectByExample(User_VideoExample example);

    User_Video selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") User_Video record, @Param("example") User_VideoExample example);

    int updateByExample(@Param("record") User_Video record, @Param("example") User_VideoExample example);

    int updateByPrimaryKeySelective(User_Video record);

    int updateByPrimaryKey(User_Video record);
}