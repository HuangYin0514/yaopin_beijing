package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.ValidationService;
public class ValidationController extends MultiActionController {
  private ValidationService validationService;

  public ValidationService getValidationService() {
    return validationService;
  }

  public void setValidationService(ValidationService validationService) {
    this.validationService = validationService;
  }
}