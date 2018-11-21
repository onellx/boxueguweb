package com.boxuegu.mapper;

import com.boxuegu.pojo.Courseinfo;
import com.boxuegu.pojo.CourseinfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CourseinfoMapper {
    long countByExample(CourseinfoExample example);

    int deleteByExample(CourseinfoExample example);

    int deleteByPrimaryKey(Integer cid);

    int insert(Courseinfo record);

    int insertSelective(Courseinfo record);

    List<Courseinfo> selectByExampleWithBLOBs(CourseinfoExample example);

    List<Courseinfo> selectByExample(CourseinfoExample example);

    Courseinfo selectByPrimaryKey(Integer cid);

    int updateByExampleSelective(@Param("record") Courseinfo record, @Param("example") CourseinfoExample example);

    int updateByExampleWithBLOBs(@Param("record") Courseinfo record, @Param("example") CourseinfoExample example);

    int updateByExample(@Param("record") Courseinfo record, @Param("example") CourseinfoExample example);

    int updateByPrimaryKeySelective(Courseinfo record);

    int updateByPrimaryKeyWithBLOBs(Courseinfo record);

    int updateByPrimaryKey(Courseinfo record);
}