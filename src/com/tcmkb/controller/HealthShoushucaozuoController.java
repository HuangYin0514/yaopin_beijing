package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthShoushucaozuoService;
public class HealthShoushucaozuoController extends MultiActionController {
  private HealthShoushucaozuoService healthShoushucaozuoService;

  public HealthShoushucaozuoService getHealthShoushucaozuoService() {
    return healthShoushucaozuoService;
  }

  public void setHealthShoushucaozuoService(HealthShoushucaozuoService healthShoushucaozuoService) {
    this.healthShoushucaozuoService = healthShoushucaozuoService;
  }
}