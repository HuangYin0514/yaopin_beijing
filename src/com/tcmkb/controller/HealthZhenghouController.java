package com.tcmkb.controller;

import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.tcmkb.service.HealthZhenghouService;
public class HealthZhenghouController extends MultiActionController {
  private HealthZhenghouService healthZhenghouService ;

  public HealthZhenghouService getHealthZhenghouService() {
    return healthZhenghouService;
  }

  public void setHealthZhenghouService(HealthZhenghouService healthZhenghouService) {
    this.healthZhenghouService = healthZhenghouService;
  }
}