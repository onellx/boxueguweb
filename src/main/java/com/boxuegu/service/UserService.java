package com.boxuegu.service;

import com.boxuegu.pojo.Userinfo;

public interface UserService {

    /**
     * 登录业务逻辑处理，根据用户名查找用户并返回
     * 如果有则返回用户信息，否则返回null
     * @param username 用户名
     * @return 用户pojo
     */
    public Userinfo login(String username);

    /**
     * 用户注册逻辑处理
     * @param userinfo 注册用户信息
     * @return 注册成功后的用户的id值
     */
    public int register(Userinfo userinfo);

    /**
     * 更新用户
     * @param userinfo 要更新的用户信息
     * @return 用户id
     */
    public int updateUserInfo(Userinfo userinfo);
}
