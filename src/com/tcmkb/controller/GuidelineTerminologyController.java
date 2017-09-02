package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GuidelineTerminologyService;
public class GuidelineTerminologyController extends MultiActionController {
  private GuidelineTerminologyService guidelineTerminologyService;

  public GuidelineTerminologyService getGuidelineTerminologyService() {
    return guidelineTerminologyService;
  }

  public void setGuidelineTerminologyService(GuidelineTerminologyService guidelineTerminologyService) {
    this.guidelineTerminologyService = guidelineTerminologyService;
  }
}