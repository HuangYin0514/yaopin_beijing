package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.ExperienceService;
public class ExperienceController extends MultiActionController {
  private ExperienceService experienceService;

  public ExperienceService getExperienceService() {
    return experienceService;
  }

  public void setExperienceService(ExperienceService experienceService) {
    this.experienceService = experienceService;
  }
}