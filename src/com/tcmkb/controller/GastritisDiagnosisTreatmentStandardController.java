package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisDiagnosisTreatmentStandardService;
public class GastritisDiagnosisTreatmentStandardController extends MultiActionController {
  private GastritisDiagnosisTreatmentStandardService diagnosisTreatmentStandardService;

  public GastritisDiagnosisTreatmentStandardService getDiagnosisTreatmentStandardService() {
    return diagnosisTreatmentStandardService;
  }

  public void setDiagnosisTreatmentStandardService(GastritisDiagnosisTreatmentStandardService diagnosisTreatmentStandardService) {
    this.diagnosisTreatmentStandardService = diagnosisTreatmentStandardService;
  }
}