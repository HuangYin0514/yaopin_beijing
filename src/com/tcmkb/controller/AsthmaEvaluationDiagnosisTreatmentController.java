package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaEvaluationDiagnosisTreatmentService;
public class AsthmaEvaluationDiagnosisTreatmentController extends MultiActionController {
  private AsthmaEvaluationDiagnosisTreatmentService asthmaEvaluationDiagnosisTreatmentService;

  public AsthmaEvaluationDiagnosisTreatmentService getAsthmaEvaluationDiagnosisTreatmentService() {
    return asthmaEvaluationDiagnosisTreatmentService;
  }

  public void setAsthmaEvaluationDiagnosisTreatmentService(AsthmaEvaluationDiagnosisTreatmentService asthmaEvaluationDiagnosisTreatmentService) {
    this.asthmaEvaluationDiagnosisTreatmentService = asthmaEvaluationDiagnosisTreatmentService;
  }
}