package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthZhenjiuService;
public class HealthZhenjiuController extends MultiActionController {
  private HealthZhenjiuService healthZhenjiuService;

  public HealthZhenjiuService getHealthZhenjiuService() {
    return healthZhenjiuService;
  }

  public void setHealthZhenjiuService(HealthZhenjiuService healthZhenjiuService) {
    this.healthZhenjiuService = healthZhenjiuService;
  }
}