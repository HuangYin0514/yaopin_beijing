package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GuidelineClinicalGuidelinesService;
public class GuidelineClinicalGuidelinesController extends MultiActionController {
  private GuidelineClinicalGuidelinesService guidelineClinicalGuidelinesService;

  public GuidelineClinicalGuidelinesService getGuidelineClinicalGuidelinesService() {
    return guidelineClinicalGuidelinesService;
  }

  public void setGuidelineClinicalGuidelinesService(GuidelineClinicalGuidelinesService guidelineClinicalGuidelinesService) {
    this.guidelineClinicalGuidelinesService = guidelineClinicalGuidelinesService;
  }
}