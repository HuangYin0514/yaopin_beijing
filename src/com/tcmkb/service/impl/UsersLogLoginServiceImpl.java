package com.tcmkb.service.impl;
import com.tcmkb.dao.UsersLogLoginDao;
import com.tcmkb.model.Users;
import com.tcmkb.service.UsersLogLoginService;
import com.tcmkb.utils.CodeInfo;
import com.tcmkb.utils.IndexResult;
import com.tcmkb.utils.MD5Util;

public class UsersLogLoginServiceImpl implements UsersLogLoginService{

    private UsersLogLoginDao usersLogLoginDao;

    @Override
    public IndexResult queryUser(Users users) {
        IndexResult indexResult = new IndexResult();
        String md5Pass = MD5Util.MD5(users.getPass());
        users.setPass(md5Pass);
        Users queryUser = usersLogLoginDao.queryUser(users);
        if (queryUser == null){
            indexResult.setErr_no(CodeInfo.USERNAME_OR_PASS_ERROR);
        }else {
            indexResult.setErr_no(CodeInfo.SUCCESS_LOGIN);
        }
        return indexResult;
    }

    public UsersLogLoginDao getUsersLogLoginDao() {
        return usersLogLoginDao;
    }

    public void setUsersLogLoginDao(UsersLogLoginDao usersLogLoginDao) {
        this.usersLogLoginDao = usersLogLoginDao;
    }
}