package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaHealthMethodService;
public class AsthmaHealthMethodController extends MultiActionController {
  private AsthmaHealthMethodService asthmaHealthMethodService;

  public AsthmaHealthMethodService getAsthmaHealthMethodService() {
    return asthmaHealthMethodService;
  }

  public void setAsthmaHealthMethodService(AsthmaHealthMethodService asthmaHealthMethodService) {
    this.asthmaHealthMethodService = asthmaHealthMethodService;
  }
}