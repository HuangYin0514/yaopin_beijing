package com.tcmkb.dao.impl;
import com.tcmkb.base.BaseDao;
import com.tcmkb.dao.UsersLogLoginDao;
import com.tcmkb.model.Users;
import com.tcmkb.model.UsersExample;
import conf.mybatis.mapper.UsersMapper;

import java.util.List;

public class UsersLogLoginDaoImpl extends BaseDao implements UsersLogLoginDao{


    @Override
    public Users queryUser(Users users) {
        UsersMapper usersMapper = getSqlSession().getMapper(UsersMapper.class);
        UsersExample example = new UsersExample();
        UsersExample.Criteria criteria = example.createCriteria();
        criteria.andAccountEqualTo(users.getAccount());
        criteria.andPassEqualTo(users.getPass());
        List<Users> usersList = usersMapper.selectByExample(example);
        if (usersList.isEmpty()){
            return null;
        }else {
            return usersList.get(0);

        }
    }
}