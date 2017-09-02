package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthGraphService;
public class HealthGraphController extends MultiActionController {
  private HealthGraphService healthGraphService;

  public HealthGraphService getHealthGraphService() {
    return healthGraphService;
  }

  public void setHealthGraphService(HealthGraphService healthGraphService) {
    this.healthGraphService = healthGraphService;
  }
}