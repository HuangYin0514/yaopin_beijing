package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.MastersService;
public class MastersController extends MultiActionController {
  private MastersService mastersService;

  public MastersService getMastersService() {
    return mastersService;
  }

  public void setMastersService(MastersService mastersService) {
    this.mastersService = mastersService;
  }
}