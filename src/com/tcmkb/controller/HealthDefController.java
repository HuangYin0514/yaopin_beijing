package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthDefService;
public class HealthDefController extends MultiActionController {
  private HealthDefService healthDefService;

  public HealthDefService getHealthDefService() {
    return healthDefService;
  }

  public void setHealthDefService(HealthDefService healthDefService) {
    this.healthDefService = healthDefService;
  }
}