package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthCidianService;
public class HealthCidianController extends MultiActionController {
  private HealthCidianService healthCidianService;

  public HealthCidianService getHealthCidianService() {
    return healthCidianService;
  }

  public void setHealthCidianService(HealthCidianService healthCidianService) {
    this.healthCidianService = healthCidianService;
  }
}