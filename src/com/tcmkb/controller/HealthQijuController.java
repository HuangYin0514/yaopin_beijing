package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthQijuService;
public class HealthQijuController extends MultiActionController {
  private HealthQijuService healthQijuService;

  public HealthQijuService getHealthQijuService() {
    return healthQijuService;
  }

  public void setHealthQijuService(HealthQijuService healthQijuService) {
    this.healthQijuService = healthQijuService;
  }
}