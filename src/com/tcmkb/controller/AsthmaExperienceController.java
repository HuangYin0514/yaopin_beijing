package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaExperienceService;
public class AsthmaExperienceController extends MultiActionController {
  private AsthmaExperienceService asthmaExperienceService;

  public AsthmaExperienceService getAsthmaExperienceService() {
    return asthmaExperienceService;
  }

  public void setAsthmaExperienceService(AsthmaExperienceService asthmaExperienceService) {
    this.asthmaExperienceService = asthmaExperienceService;
  }
}