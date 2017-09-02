package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.RctDocsService;
public class RctDocsController extends MultiActionController {
  private RctDocsService rctDocsService ;

  public RctDocsService getRctDocsService() {
    return rctDocsService;
  }

  public void setRctDocsService(RctDocsService rctDocsService) {
    this.rctDocsService = rctDocsService;
  }
}