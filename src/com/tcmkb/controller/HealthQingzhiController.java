package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthQingzhiService;
public class HealthQingzhiController extends MultiActionController {
  private HealthQingzhiService healthQingzhiService;

  public HealthQingzhiService getHealthQingzhiService() {
    return healthQingzhiService;
  }

  public void setHealthQingzhiService(HealthQingzhiService healthQingzhiService) {
    this.healthQingzhiService = healthQingzhiService;
  }
}