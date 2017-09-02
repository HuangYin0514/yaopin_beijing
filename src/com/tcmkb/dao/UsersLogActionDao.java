package com.tcmkb.dao;

import com.tcmkb.model.UsersWithBLOBs;

public interface UsersLogActionDao{
    void saveUser(UsersWithBLOBs usersWithBLOBs);
}