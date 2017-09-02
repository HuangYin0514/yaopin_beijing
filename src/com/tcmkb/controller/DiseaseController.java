package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.DiseaseService;
public class DiseaseController extends MultiActionController {
  private DiseaseService diseaseService;

  public DiseaseService getDiseaseService() {
    return diseaseService;
  }

  public void setDiseaseService(DiseaseService diseaseService) {
    this.diseaseService = diseaseService;
  }
}