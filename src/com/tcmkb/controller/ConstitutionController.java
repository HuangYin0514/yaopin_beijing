package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.ConstitutionService;
public class ConstitutionController extends MultiActionController {
  private ConstitutionService constitutionService;

  public ConstitutionService getConstitutionService() {
    return constitutionService;
  }

  public void setConstitutionService(ConstitutionService constitutionService) {
    this.constitutionService = constitutionService;
  }
}