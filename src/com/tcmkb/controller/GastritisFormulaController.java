package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisFormulaService;
public class GastritisFormulaController extends MultiActionController {
  private GastritisFormulaService gastritisFormulaService;

  public GastritisFormulaService getGastritisFormulaService() {
    return gastritisFormulaService;
  }

  public void setGastritisFormulaService(GastritisFormulaService gastritisFormulaService) {
    this.gastritisFormulaService = gastritisFormulaService;
  }
}