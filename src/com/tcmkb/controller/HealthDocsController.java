package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthDocsService;
public class HealthDocsController extends MultiActionController {
  private HealthDocsService healthDocsService;

  public HealthDocsService getHealthDocsService() {
    return healthDocsService;
  }

  public void setHealthDocsService(HealthDocsService healthDocsService) {
    this.healthDocsService = healthDocsService;
  }
}