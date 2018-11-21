package com.boxuegu.service.impl;

import com.boxuegu.mapper.ExercisesMapper;
import com.boxuegu.pojo.Exercises;
import com.boxuegu.pojo.ExercisesExample;
import com.boxuegu.service.ExerciseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName ExerciseServiceImpl
 * @Author One_llx
 * @Date 2018/11/21 0021 上午 10:45
 * @Version 1.0
 */
@Service
public class ExerciseServiceImpl implements ExerciseService {

    @Autowired
    private ExercisesMapper exercisesMapper;
    @Override
    public List<Exercises> getExercisesByCid(Integer cid) {
        ExercisesExample exercisesExample=new ExercisesExample();
        ExercisesExample.Criteria criteria = exercisesExample.createCriteria();
        criteria.andCidEqualTo(cid);
        List<Exercises> exercises = exercisesMapper.selectByExample(exercisesExample);
        return exercises;
    }
}
