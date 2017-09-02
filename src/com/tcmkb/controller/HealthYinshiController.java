package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthYinshiService;
public class HealthYinshiController extends MultiActionController {
  private HealthYinshiService healthYinshiService;

  public HealthYinshiService getHealthYinshiService() {
    return healthYinshiService;
  }

  public void setHealthYinshiService(HealthYinshiService healthYinshiService) {
    this.healthYinshiService = healthYinshiService;
  }
}