package com.tcmkb.dao.impl;
import java.util.List;

import com.tcmkb.base.BaseDao;
import com.tcmkb.dao.SystemConfigsDao;

public class SystemConfigsDaoImpl extends BaseDao implements SystemConfigsDao{

  @Override
  public List listAllwithNoParam() {
    return queryWithNoParam("systemConfig.queryAllwithNoParam");
  }



}