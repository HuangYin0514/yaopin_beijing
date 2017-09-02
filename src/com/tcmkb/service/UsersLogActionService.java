package com.tcmkb.service;

import com.tcmkb.model.UsersWithBLOBs;
import com.tcmkb.utils.IndexResult;

public interface UsersLogActionService{
    IndexResult saveUser(UsersWithBLOBs usersWithBLOBs);
}