package com.boxuegu.controllers;

import com.boxuegu.pojo.Exercises;
import com.boxuegu.service.ExerciseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @ClassName Exercise
 * @Author One_llx
 * @Date 2018/11/21 0021 上午 10:43
 * @Version 1.0
 */
@Controller
public class ExerciseController {

    @Autowired
    private ExerciseService exerciseService;

    @RequestMapping(value = "/exercise/getbycid",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public List<Exercises> getExercisesByCid(@RequestBody Integer cid){

        List<Exercises> exercisesByCid = exerciseService.getExercisesByCid(cid);
        return exercisesByCid;
    }





}
