package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthBaozhiwenxianService;
public class HealthBaozhiwenxianController extends MultiActionController {
  private HealthBaozhiwenxianService healthBaozhiwenxianService;

  public HealthBaozhiwenxianService getHealthBaozhiwenxianService() {
    return healthBaozhiwenxianService;
  }

  public void setHealthBaozhiwenxianService(HealthBaozhiwenxianService healthBaozhiwenxianService) {
    this.healthBaozhiwenxianService = healthBaozhiwenxianService;
  }
}