package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthYaowuService;
public class HealthYaowuController extends MultiActionController {
  private HealthYaowuService healthYaowuService;

  public HealthYaowuService getHealthYaowuService() {
    return healthYaowuService;
  }

  public void setHealthYaowuService(HealthYaowuService healthYaowuService) {
    this.healthYaowuService = healthYaowuService;
  }
}