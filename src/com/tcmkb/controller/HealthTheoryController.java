package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthTheoryService;
public class HealthTheoryController extends MultiActionController {
  private HealthTheoryService healthTheoryService;

  public HealthTheoryService getHealthTheoryService() {
    return healthTheoryService;
  }

  public void setHealthTheoryService(HealthTheoryService healthTheoryService) {
    this.healthTheoryService = healthTheoryService;
  }
}