package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthJingmaiService;
public class HealthJingmaiController extends MultiActionController {
  private HealthJingmaiService healthJingmaiService;

  public HealthJingmaiService getHealthJingmaiService() {
    return healthJingmaiService;
  }

  public void setHealthJingmaiService(HealthJingmaiService healthJingmaiService) {
    this.healthJingmaiService = healthJingmaiService;
  }
}