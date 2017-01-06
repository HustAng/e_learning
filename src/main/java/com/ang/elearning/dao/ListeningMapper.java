package com.ang.elearning.dao;

import com.ang.elearning.po.Listening;
import com.ang.elearning.po.ListeningExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ListeningMapper {
    int countByExample(ListeningExample example);

    int deleteByExample(ListeningExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Listening record);

    int insertSelective(Listening record);

    List<Listening> selectByExample(ListeningExample example);

    Listening selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Listening record, @Param("example") ListeningExample example);

    int updateByExample(@Param("record") Listening record, @Param("example") ListeningExample example);

    int updateByPrimaryKeySelective(Listening record);

    int updateByPrimaryKey(Listening record);
}