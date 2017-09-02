package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GuidelineCodeService;
public class GuidelineCodeController extends MultiActionController {
  private GuidelineCodeService guidelineCodeService;

  public GuidelineCodeService getGuidelineCodeService() {
    return guidelineCodeService;
  }

  public void setGuidelineCodeService(GuidelineCodeService guidelineCodeService) {
    this.guidelineCodeService = guidelineCodeService;
  }
}