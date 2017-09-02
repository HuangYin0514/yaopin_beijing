package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthYundongService;
public class HealthYundongController extends MultiActionController {
  private HealthYundongService healthYundongService;

  public HealthYundongService getHealthYundongService() {
    return healthYundongService;
  }

  public void setHealthYundongService(HealthYundongService healthYundongService) {
    this.healthYundongService = healthYundongService;
  }
}