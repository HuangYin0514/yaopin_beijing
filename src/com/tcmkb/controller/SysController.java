package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.SysService;
public class SysController extends MultiActionController {
  private SysService sysService;

  public SysService getSysService() {
    return sysService;
  }

  public void setSysService(SysService sysService) {
    this.sysService = sysService;
  }
}