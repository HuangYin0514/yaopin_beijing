package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.DiseaseClassificationService;
public class DiseaseClassificationController extends MultiActionController {
  private DiseaseClassificationService diseaseClassificationService;

  public DiseaseClassificationService getDiseaseClassificationService() {
    return diseaseClassificationService;
  }

  public void setDiseaseClassificationService(DiseaseClassificationService diseaseClassificationService) {
    this.diseaseClassificationService = diseaseClassificationService;
  }
}