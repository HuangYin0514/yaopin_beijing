package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthTizhiService;
public class HealthTizhiController extends MultiActionController {
  private HealthTizhiService healthTizhiService;

  public HealthTizhiService getHealthTizhiService() {
    return healthTizhiService;
  }

  public void setHealthTizhiService(HealthTizhiService healthTizhiService) {
    this.healthTizhiService = healthTizhiService;
  }
}