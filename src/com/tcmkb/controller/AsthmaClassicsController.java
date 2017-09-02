package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaClassicsService;
public class AsthmaClassicsController extends MultiActionController {
  private AsthmaClassicsService asthmaClassicsService;

  public AsthmaClassicsService getAsthmaClassicsService() {
    return asthmaClassicsService;
  }

  public void setAsthmaClassicsService(AsthmaClassicsService asthmaClassicsService) {
    this.asthmaClassicsService = asthmaClassicsService;
  }
}