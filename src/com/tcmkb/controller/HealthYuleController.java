package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthYuleService;
public class HealthYuleController extends MultiActionController {
  private HealthYuleService healthYuleService;

  public HealthYuleService getHealthYuleService() {
    return healthYuleService;
  }

  public void setHealthYuleService(HealthYuleService healthYuleService) {
    this.healthYuleService = healthYuleService;
  }
}