package com.boxuegu.service.impl;

import com.boxuegu.mapper.CourseinfoMapper;
import com.boxuegu.pojo.Courseinfo;
import com.boxuegu.pojo.CourseinfoExample;
import com.boxuegu.service.CourseinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName CourseinfoServiceImol
 * @Author One_llx
 * @Date 2018/11/21 0021 上午 10:32
 * @Version 1.0
 */
@Service
public class CourseinfoServiceImpl implements CourseinfoService {
    @Autowired
    private CourseinfoMapper courseinfoMapper;
    @Override
    public List<Courseinfo> getCourseList() {

        List<Courseinfo> courseinfos = courseinfoMapper.selectByExample(new CourseinfoExample());
        return courseinfos;
    }
}
