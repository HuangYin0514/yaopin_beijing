package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthJournalsService;
public class HealthJournalsController extends MultiActionController {
  private HealthJournalsService healthJournalsService;

  public HealthJournalsService getHealthJournalsService() {
    return healthJournalsService;
  }

  public void setHealthJournalsService(HealthJournalsService healthJournalsService) {
    this.healthJournalsService = healthJournalsService;
  }
}