package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisSystemEvaluationService;
public class GastritisSystemEvaluationController extends MultiActionController {
  private GastritisSystemEvaluationService gastritisSystemEvaluationService;

  public GastritisSystemEvaluationService getGastritisSystemEvaluationService() {
    return gastritisSystemEvaluationService;
  }

  public void setGastritisSystemEvaluationService(GastritisSystemEvaluationService gastritisSystemEvaluationService) {
    this.gastritisSystemEvaluationService = gastritisSystemEvaluationService;
  }
}