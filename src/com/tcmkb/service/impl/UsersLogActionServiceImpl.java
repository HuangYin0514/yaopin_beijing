package com.tcmkb.service.impl;

import com.tcmkb.dao.UsersLogActionDao;
import com.tcmkb.model.UsersWithBLOBs;
import com.tcmkb.service.UsersLogActionService;
import com.tcmkb.utils.CodeInfo;
import com.tcmkb.utils.IndexResult;
import com.tcmkb.utils.MD5Util;

public class UsersLogActionServiceImpl implements UsersLogActionService{

    private UsersLogActionDao usersLogActionDao;

    /**
     * 用户注册
     * @param usersWithBLOBs
     * @return
     */
    @Override
    public IndexResult saveUser(UsersWithBLOBs usersWithBLOBs) {
        String md5Pass = MD5Util.MD5(usersWithBLOBs.getPass());
        usersWithBLOBs.setPass(md5Pass);
        IndexResult indexResult = new IndexResult();
        try {
            usersLogActionDao.saveUser(usersWithBLOBs);
            indexResult.setErr_no(CodeInfo.SUCCESS_LOGIN);
        }catch (Exception e){
            e.printStackTrace();
            indexResult.setErr_msg("申请失败");
        }
        return indexResult;
    }
    public UsersLogActionDao getUsersLogActionDao() {
        return usersLogActionDao;
    }

    public void setUsersLogActionDao(UsersLogActionDao usersLogActionDao) {
        this.usersLogActionDao = usersLogActionDao;
    }
}