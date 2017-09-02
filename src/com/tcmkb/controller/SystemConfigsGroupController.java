package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.SystemConfigsGroupService;
public class SystemConfigsGroupController extends MultiActionController {
  private SystemConfigsGroupService systemConfigsGroupService;

  public SystemConfigsGroupService getSystemConfigsGroupService() {
    return systemConfigsGroupService;
  }

  public void setSystemConfigsGroupService(SystemConfigsGroupService systemConfigsGroupService) {
    this.systemConfigsGroupService = systemConfigsGroupService;
  }
}