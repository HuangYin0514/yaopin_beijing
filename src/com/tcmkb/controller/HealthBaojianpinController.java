package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthBaojianpinService;
public class HealthBaojianpinController extends MultiActionController {
  private HealthBaojianpinService healthBaojianpinService;

  public HealthBaojianpinService getHealthBaojianpinService() {
    return healthBaojianpinService;
  }

  public void setHealthBaojianpinService(HealthBaojianpinService healthBaojianpinService) {
    this.healthBaojianpinService = healthBaojianpinService;
  }
}