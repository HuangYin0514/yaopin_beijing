package com.tcmkb.service.impl;
import java.util.List;

import com.tcmkb.dao.SystemConfigsDao;
import com.tcmkb.service.SystemConfigsService;
public class SystemConfigsServiceImpl implements SystemConfigsService{
  private SystemConfigsDao systemConfigsDao;
  @Override
  public List listAllwithNoParam() {
    return systemConfigsDao.listAllwithNoParam();
  }
  public SystemConfigsDao getSystemConfigsDao() {
    return systemConfigsDao;
  }
  public void setSystemConfigsDao(SystemConfigsDao systemConfigsDao) {
    this.systemConfigsDao = systemConfigsDao;
  }

}