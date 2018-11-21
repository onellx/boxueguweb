package com.boxuegu.service;

import com.boxuegu.pojo.Exercises;

import java.util.List;

/**
 * @ClassName ExerciseService
 * @Author One_llx
 * @Date 2018/11/21 0021 上午 10:44
 * @Version 1.0
 */
public interface ExerciseService {

    public List<Exercises> getExercisesByCid(Integer cid);
}
