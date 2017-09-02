package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthJibingService;
public class HealthJibingController extends MultiActionController {
  private HealthJibingService healthJibingService;

  public HealthJibingService getHealthJibingService() {
    return healthJibingService;
  }

  public void setHealthJibingService(HealthJibingService healthJibingService) {
    this.healthJibingService = healthJibingService;
  }
}