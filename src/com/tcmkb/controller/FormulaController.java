package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.FormulaService;
public class FormulaController extends MultiActionController {
  private FormulaService formulaService;

  public FormulaService getFormulaService() {
    return formulaService;
  }

  public void setFormulaService(FormulaService formulaService) {
    this.formulaService = formulaService;
  }
}