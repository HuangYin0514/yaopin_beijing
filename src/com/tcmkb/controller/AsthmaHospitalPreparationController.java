package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaHospitalPreparationService;
public class AsthmaHospitalPreparationController extends MultiActionController {
  private AsthmaHospitalPreparationService asthmaHospitalPreparationService;

  public AsthmaHospitalPreparationService getAsthmaHospitalPreparationService() {
    return asthmaHospitalPreparationService;
  }

  public void setAsthmaHospitalPreparationService(AsthmaHospitalPreparationService asthmaHospitalPreparationService) {
    this.asthmaHospitalPreparationService = asthmaHospitalPreparationService;
  }
}