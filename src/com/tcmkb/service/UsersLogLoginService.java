package com.tcmkb.service;

import com.tcmkb.model.Users;
import com.tcmkb.utils.IndexResult;

public interface UsersLogLoginService{

    IndexResult queryUser(Users users);
}