package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.FormulaFangjiService;
public class FormulaFangjiController extends MultiActionController {
  private FormulaFangjiService fangjiService;

  public FormulaFangjiService getFangjiService() {
    return fangjiService;
  }

  public void setFangjiService(FormulaFangjiService fangjiService) {
    this.fangjiService = fangjiService;
  }
}