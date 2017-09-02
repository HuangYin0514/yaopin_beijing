package com.tcmkb.controller;

import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.tcmkb.service.ClinicJianbieService;
public class ClinicJianbieController extends MultiActionController {
  private ClinicJianbieService clinicJianbieService;

  public ClinicJianbieService getClinicJianbieService() {
    return clinicJianbieService;
  }

  public void setClinicJianbieService(ClinicJianbieService clinicJianbieService) {
    this.clinicJianbieService = clinicJianbieService;
  }
}