package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisSystemEvaluationCopy1Service;
public class GastritisSystemEvaluationCopy1Controller extends MultiActionController {
  private GastritisSystemEvaluationCopy1Service gastritisSystemEvaluationCopy1Service;

  public GastritisSystemEvaluationCopy1Service getGastritisSystemEvaluationCopy1Service() {
    return gastritisSystemEvaluationCopy1Service;
  }

  public void setGastritisSystemEvaluationCopy1Service(GastritisSystemEvaluationCopy1Service gastritisSystemEvaluationCopy1Service) {
    this.gastritisSystemEvaluationCopy1Service = gastritisSystemEvaluationCopy1Service;
  }
}