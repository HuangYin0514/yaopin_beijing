package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaDiagnosisTreatmentStandardService;
public class AsthmaDiagnosisTreatmentStandardController extends MultiActionController {
  private AsthmaDiagnosisTreatmentStandardService asthmaDiagnosisTreatmentStandardService;

  public AsthmaDiagnosisTreatmentStandardService getAsthmaDiagnosisTreatmentStandardService() {
    return asthmaDiagnosisTreatmentStandardService;
  }

  public void setAsthmaDiagnosisTreatmentStandardService(AsthmaDiagnosisTreatmentStandardService asthmaDiagnosisTreatmentStandardService) {
    this.asthmaDiagnosisTreatmentStandardService = asthmaDiagnosisTreatmentStandardService;
  }
}