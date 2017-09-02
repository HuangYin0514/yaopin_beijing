package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AreasService;
public class AreasController extends MultiActionController {
  private AreasService areasService;

  public AreasService getAreasService() {
    return areasService;
  }

  public void setAreasService(AreasService areasService) {
    this.areasService = areasService;
  }
}