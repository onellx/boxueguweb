package com.boxuegu.controllers;

import com.boxuegu.pojo.Courseinfo;
import com.boxuegu.service.CourseinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @ClassName CourseinfoController
 * @Author One_llx
 * @Date 2018/11/21 0021 上午 10:27
 * @Version 1.0
 */
@Controller
public class CourseinfoController {
    @Autowired
    private CourseinfoService courseinfoService;

    @RequestMapping(value = "/course/list",method =RequestMethod.GET,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public List<Courseinfo> getCourseList(){
        List<Courseinfo> courseinfos=courseinfoService.getCourseList();
        return courseinfos;
    }

}
