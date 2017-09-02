package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthQigongService;
public class HealthQigongController extends MultiActionController {
  private HealthQigongService healthQigongService;

  public HealthQigongService getHealthQigongService() {
    return healthQigongService;
  }

  public void setHealthQigongService(HealthQigongService healthQigongService) {
    this.healthQigongService = healthQigongService;
  }
}