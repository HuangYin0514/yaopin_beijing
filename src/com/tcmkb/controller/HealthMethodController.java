package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthMethodService;
public class HealthMethodController extends MultiActionController {
  private HealthMethodService healthMethodService;

  public HealthMethodService getHealthMethodService() {
    return healthMethodService;
  }

  public void setHealthMethodService(HealthMethodService healthMethodService) {
    this.healthMethodService = healthMethodService;
  }
}