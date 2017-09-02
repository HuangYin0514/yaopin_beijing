package com.tcmkb.dao.impl;

import com.tcmkb.base.BaseDao;
import com.tcmkb.dao.UsersLogActionDao;
import com.tcmkb.model.UsersWithBLOBs;
import conf.mybatis.mapper.UsersMapper;

public class UsersLogActionDaoImpl extends BaseDao implements UsersLogActionDao{

    /**
     * 用户注册
     * @param usersWithBLOBs
     */
    @Override
    public void saveUser(UsersWithBLOBs usersWithBLOBs) {
        UsersMapper mapper = getSqlSession().getMapper(UsersMapper.class);
        mapper.insertSelective(usersWithBLOBs);
    }
}