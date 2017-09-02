package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthShiwuService;
public class HealthShiwuController extends MultiActionController {
  private HealthShiwuService healthShiwuService;

  public HealthShiwuService getHealthShiwuService() {
    return healthShiwuService;
  }

  public void setHealthShiwuService(HealthShiwuService healthShiwuService) {
    this.healthShiwuService = healthShiwuService;
  }
}