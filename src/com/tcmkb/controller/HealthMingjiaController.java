package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthMingjiaService;
public class HealthMingjiaController extends MultiActionController {
  private HealthMingjiaService healthMingjiaService;

  public HealthMingjiaService getHealthMingjiaService() {
    return healthMingjiaService;
  }

  public void setHealthMingjiaService(HealthMingjiaService healthMingjiaService) {
    this.healthMingjiaService = healthMingjiaService;
  }
}