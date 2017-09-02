package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthXiyijibingshuyuService;
public class HealthXiyijibingshuyuController extends MultiActionController {
  private HealthXiyijibingshuyuService healthXiyijibingshuyuService;

  public HealthXiyijibingshuyuService getHealthXiyijibingshuyuService() {
    return healthXiyijibingshuyuService;
  }

  public void setHealthXiyijibingshuyuService(HealthXiyijibingshuyuService healthXiyijibingshuyuService) {
    this.healthXiyijibingshuyuService = healthXiyijibingshuyuService;
  }
}