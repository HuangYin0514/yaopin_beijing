package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.ClinicXtpjService;
public class ClinicXtpjController extends MultiActionController {
  private ClinicXtpjService clinicXtpjService;

  public ClinicXtpjService getClinicXtpjService() {
    return clinicXtpjService;
  }

  public void setClinicXtpjService(ClinicXtpjService clinicXtpjService) {
    this.clinicXtpjService = clinicXtpjService;
  }
}