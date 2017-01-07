package com.ang.elearning.dao;

import com.ang.elearning.po.Word_Type;
import com.ang.elearning.po.Word_TypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface Word_TypeMapper {
    int countByExample(Word_TypeExample example);

    int deleteByExample(Word_TypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Word_Type record);

    int insertSelective(Word_Type record);

    List<Word_Type> selectByExample(Word_TypeExample example);

    Word_Type selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Word_Type record, @Param("example") Word_TypeExample example);

    int updateByExample(@Param("record") Word_Type record, @Param("example") Word_TypeExample example);

    int updateByPrimaryKeySelective(Word_Type record);

    int updateByPrimaryKey(Word_Type record);
}