package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthYuancailiaoService;
public class HealthYuancailiaoController extends MultiActionController {
  private HealthYuancailiaoService healthYuancailiaoService;

  public HealthYuancailiaoService getHealthYuancailiaoService() {
    return healthYuancailiaoService;
  }

  public void setHealthYuancailiaoService(HealthYuancailiaoService healthYuancailiaoService) {
    this.healthYuancailiaoService = healthYuancailiaoService;
  }
}