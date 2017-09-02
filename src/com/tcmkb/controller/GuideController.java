package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GuideService;
public class GuideController extends MultiActionController {
  private GuideService guideService;

  public GuideService getGuideService() {
    return guideService;
  }

  public void setGuideService(GuideService guideService) {
    this.guideService = guideService;
  }
}