package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.ClassicsService;
public class ClassicsController extends MultiActionController {
  private ClassicsService classicsService;

  public ClassicsService getClassicsService() {
    return classicsService;
  }

  public void setClassicsService(ClassicsService classicsService) {
    this.classicsService = classicsService;
  }
}