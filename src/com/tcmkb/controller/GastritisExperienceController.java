package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisExperienceService;
public class GastritisExperienceController extends MultiActionController {
  private GastritisExperienceService gastritisExperienceService;

  public GastritisExperienceService getGastritisExperienceService() {
    return gastritisExperienceService;
  }

  public void setGastritisExperienceService(GastritisExperienceService gastritisExperienceService) {
    this.gastritisExperienceService = gastritisExperienceService;
  }
}