package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisSystemEvaluationCopyService;
public class GastritisSystemEvaluationCopyController extends MultiActionController {
  private GastritisSystemEvaluationCopyService gastritisSystemEvaluationCopyService;

  public GastritisSystemEvaluationCopyService getGastritisSystemEvaluationCopyService() {
    return gastritisSystemEvaluationCopyService;
  }

  public void setGastritisSystemEvaluationCopyService(GastritisSystemEvaluationCopyService gastritisSystemEvaluationCopyService) {
    this.gastritisSystemEvaluationCopyService = gastritisSystemEvaluationCopyService;
  }
}