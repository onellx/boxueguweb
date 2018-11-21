package com.boxuegu.service.impl;

import com.boxuegu.mapper.UserinfoMapper;
import com.boxuegu.pojo.Userinfo;
import com.boxuegu.pojo.UserinfoExample;
import com.boxuegu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserinfoMapper userinfoMapper;

    @Override
    public Userinfo login(String username) {
        UserinfoExample userinfoExample=new UserinfoExample();
        UserinfoExample.Criteria criteria = userinfoExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<Userinfo> userinfos = userinfoMapper.selectByExample(userinfoExample);
        if (userinfos.size()<=0||userinfos==null){
            return null;
        }
        return userinfos.get(0);
    }

    @Override
    public int register(Userinfo userinfo) {

        return userinfoMapper.insertSelective(userinfo);
    }

    @Override
    public int updateUserInfo(Userinfo userinfo) {
        return userinfoMapper.updateByPrimaryKeySelective(userinfo);

    }
}
