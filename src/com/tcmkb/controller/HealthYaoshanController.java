package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthYaoshanService;
public class HealthYaoshanController extends MultiActionController {
  private HealthYaoshanService healthYaoshanService;

  public HealthYaoshanService getHealthYaoshanService() {
    return healthYaoshanService;
  }

  public void setHealthYaoshanService(HealthYaoshanService healthYaoshanService) {
    this.healthYaoshanService = healthYaoshanService;
  }
}