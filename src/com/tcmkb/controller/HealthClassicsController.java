package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthClassicsService;
public class HealthClassicsController extends MultiActionController {
  private HealthClassicsService healthClassicsService;

  public HealthClassicsService getHealthClassicsService() {
    return healthClassicsService;
  }

  public void setHealthClassicsService(HealthClassicsService healthClassicsService) {
    this.healthClassicsService = healthClassicsService;
  }
}