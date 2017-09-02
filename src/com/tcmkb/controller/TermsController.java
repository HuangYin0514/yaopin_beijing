package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.TermsService;
public class TermsController extends MultiActionController {
  private TermsService termsService;

  public TermsService getTermsService() {
    return termsService;
  }

  public void setTermsService(TermsService termsService) {
    this.termsService = termsService;
  }
}