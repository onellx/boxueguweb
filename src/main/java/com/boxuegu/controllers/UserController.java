package com.boxuegu.controllers;


import com.boxuegu.pojo.Userinfo;
import com.boxuegu.service.UserService;
import com.boxuegu.utils.JsonUtils;
import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {
    @Autowired
    private UserService userService;


    @RequestMapping(value = "/user/login",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public Userinfo login(@RequestBody String username){
        Userinfo userinfo = userService.login(JsonUtils.jsonToPojo(username,String.class));
        return userinfo;
    }
    @RequestMapping(value = "/user/register",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String register(@RequestBody Userinfo userinfo){
        int id=userService.register(userinfo);
        if (id==0){
            return "false";
        }
        return "true";
    }
    @RequestMapping(value = "/user/update",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String updateUserInfo(@RequestBody Userinfo userinfo){

        int id=userService.updateUserInfo(userinfo);
        System.out.println(id);
        System.out.println(userinfo.getUid());
        if (id==0){
            return "false";
        }
        return "true";
    }





}
