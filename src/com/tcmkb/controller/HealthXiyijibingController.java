package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthXiyijibingService;
public class HealthXiyijibingController extends MultiActionController {
  private HealthXiyijibingService healthXiyijibingService;

  public HealthXiyijibingService getHealthXiyijibingService() {
    return healthXiyijibingService;
  }

  public void setHealthXiyijibingService(HealthXiyijibingService healthXiyijibingService) {
    this.healthXiyijibingService = healthXiyijibingService;
  }
}