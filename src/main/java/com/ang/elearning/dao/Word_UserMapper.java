package com.ang.elearning.dao;

import com.ang.elearning.po.Word_User;
import com.ang.elearning.po.Word_UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Word_UserMapper {
    int countByExample(Word_UserExample example);

    int deleteByExample(Word_UserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Word_User record);

    int insertSelective(Word_User record);

    List<Word_User> selectByExample(Word_UserExample example);

    Word_User selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Word_User record, @Param("example") Word_UserExample example);

    int updateByExample(@Param("record") Word_User record, @Param("example") Word_UserExample example);

    int updateByPrimaryKeySelective(Word_User record);

    int updateByPrimaryKey(Word_User record);
}