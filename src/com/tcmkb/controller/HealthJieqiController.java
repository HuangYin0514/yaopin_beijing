package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthJieqiService;
public class HealthJieqiController extends MultiActionController {
  private HealthJieqiService healthJieqiService;

  public HealthJieqiService getHealthJieqiService() {
    return healthJieqiService;
  }

  public void setHealthJieqiService(HealthJieqiService healthJieqiService) {
    this.healthJieqiService = healthJieqiService;
  }
}