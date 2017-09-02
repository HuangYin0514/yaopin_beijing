package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaSystemEvaluationService;
public class AsthmaSystemEvaluationController extends MultiActionController {
  private AsthmaSystemEvaluationService asthmaSystemEvaluationService;

  public AsthmaSystemEvaluationService getAsthmaSystemEvaluationService() {
    return asthmaSystemEvaluationService;
  }

  public void setAsthmaSystemEvaluationService(AsthmaSystemEvaluationService asthmaSystemEvaluationService) {
    this.asthmaSystemEvaluationService = asthmaSystemEvaluationService;
  }
}