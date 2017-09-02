package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisScienceService;
public class GastritisScienceController extends MultiActionController {
  private GastritisScienceService gastritisScienceService;

  public GastritisScienceService getGastritisScienceService() {
    return gastritisScienceService;
  }

  public void setGastritisScienceService(GastritisScienceService gastritisScienceService) {
    this.gastritisScienceService = gastritisScienceService;
  }
}