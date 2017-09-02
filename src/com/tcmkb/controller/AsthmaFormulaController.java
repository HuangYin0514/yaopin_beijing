package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaFormulaService;
public class AsthmaFormulaController extends MultiActionController {
  private AsthmaFormulaService asthmaFormulaService;

  public AsthmaFormulaService getAsthmaFormulaService() {
    return asthmaFormulaService;
  }

  public void setAsthmaFormulaService(AsthmaFormulaService asthmaFormulaService) {
    this.asthmaFormulaService = asthmaFormulaService;
  }
}