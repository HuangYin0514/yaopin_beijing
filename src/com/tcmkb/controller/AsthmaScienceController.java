package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaScienceService;
public class AsthmaScienceController extends MultiActionController {
  private AsthmaScienceService asthmaScienceService;

  public AsthmaScienceService getAsthmaScienceService() {
    return asthmaScienceService;
  }

  public void setAsthmaScienceService(AsthmaScienceService asthmaScienceService) {
    this.asthmaScienceService = asthmaScienceService;
  }
}