package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GuidelineService;
public class GuidelineController extends MultiActionController {
  private GuidelineService guidelineService;

  public GuidelineService getGuidelineService() {
    return guidelineService;
  }

  public void setGuidelineService(GuidelineService guidelineService) {
    this.guidelineService = guidelineService;
  }
}