package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthZhongyiyangshenyuanzeService;
public class HealthZhongyiyangshenyuanzeController extends MultiActionController {
  private HealthZhongyiyangshenyuanzeService healthZhongyiyangshenyuanzeService;

  public HealthZhongyiyangshenyuanzeService getHealthZhongyiyangshenyuanzeService() {
    return healthZhongyiyangshenyuanzeService;
  }

  public void setHealthZhongyiyangshenyuanzeService(HealthZhongyiyangshenyuanzeService healthZhongyiyangshenyuanzeService) {
    this.healthZhongyiyangshenyuanzeService = healthZhongyiyangshenyuanzeService;
  }
}