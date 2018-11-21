package com.boxuegu.mapper;

import com.boxuegu.pojo.Exercises;
import com.boxuegu.pojo.ExercisesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ExercisesMapper {
    long countByExample(ExercisesExample example);

    int deleteByExample(ExercisesExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Exercises record);

    int insertSelective(Exercises record);

    List<Exercises> selectByExample(ExercisesExample example);

    Exercises selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Exercises record, @Param("example") ExercisesExample example);

    int updateByExample(@Param("record") Exercises record, @Param("example") ExercisesExample example);

    int updateByPrimaryKeySelective(Exercises record);

    int updateByPrimaryKey(Exercises record);
}