package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthXueweiService;
public class HealthXueweiController extends MultiActionController {
  private HealthXueweiService healthXueweiService;

  public HealthXueweiService getHealthXueweiService() {
    return healthXueweiService;
  }

  public void setHealthXueweiService(HealthXueweiService healthXueweiService) {
    this.healthXueweiService = healthXueweiService;
  }
}