package com.ang.elearning.dao;

import com.ang.elearning.po.Word;
import com.ang.elearning.po.WordExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WordMapper {
    int countByExample(WordExample example);

    int deleteByExample(WordExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Word record);

    int insertSelective(Word record);

    List<Word> selectByExample(WordExample example);

    Word selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Word record, @Param("example") WordExample example);

    int updateByExample(@Param("record") Word record, @Param("example") WordExample example);

    int updateByPrimaryKeySelective(Word record);

    int updateByPrimaryKey(Word record);
}