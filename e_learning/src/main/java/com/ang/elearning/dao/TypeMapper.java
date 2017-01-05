package com.ang.elearning.dao;

import com.ang.elearning.po.Type;
import com.ang.elearning.po.TypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TypeMapper {
    int countByExample(TypeExample example);

    int deleteByExample(TypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Type record);

    int insertSelective(Type record);

    List<Type> selectByExample(TypeExample example);

    Type selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Type record, @Param("example") TypeExample example);

    int updateByExample(@Param("record") Type record, @Param("example") TypeExample example);

    int updateByPrimaryKeySelective(Type record);

    int updateByPrimaryKey(Type record);
}