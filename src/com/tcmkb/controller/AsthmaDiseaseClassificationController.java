package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaDiseaseClassificationService;
public class AsthmaDiseaseClassificationController extends MultiActionController {
  private AsthmaDiseaseClassificationService asthmaDiseaseClassificationService;

  public AsthmaDiseaseClassificationService getAsthmaDiseaseClassificationService() {
    return asthmaDiseaseClassificationService;
  }

  public void setAsthmaDiseaseClassificationService(AsthmaDiseaseClassificationService asthmaDiseaseClassificationService) {
    this.asthmaDiseaseClassificationService = asthmaDiseaseClassificationService;
  }
}