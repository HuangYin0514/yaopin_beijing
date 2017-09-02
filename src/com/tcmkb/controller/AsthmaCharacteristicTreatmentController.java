package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaCharacteristicTreatmentService;
public class AsthmaCharacteristicTreatmentController extends MultiActionController {
  private AsthmaCharacteristicTreatmentService asthmaCharacteristicTreatmentService;

  public AsthmaCharacteristicTreatmentService getAsthmaCharacteristicTreatmentService() {
    return asthmaCharacteristicTreatmentService;
  }

  public void setAsthmaCharacteristicTreatmentService(AsthmaCharacteristicTreatmentService asthmaCharacteristicTreatmentService) {
    this.asthmaCharacteristicTreatmentService = asthmaCharacteristicTreatmentService;
  }
}