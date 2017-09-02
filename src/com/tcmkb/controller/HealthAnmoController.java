package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthAnmoService;
public class HealthAnmoController extends MultiActionController {
  private HealthAnmoService healthAnmoService;

  public HealthAnmoService getHealthAnmoService() {
    return healthAnmoService;
  }

  public void setHealthAnmoService(HealthAnmoService healthAnmoService) {
    this.healthAnmoService = healthAnmoService;
  }
}