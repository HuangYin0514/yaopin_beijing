package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisHealthMethodService;
public class GastritisHealthMethodController extends MultiActionController {
  private GastritisHealthMethodService gastritisHealthMethodService;

  public GastritisHealthMethodService getGastritisHealthMethodService() {
    return gastritisHealthMethodService;
  }

  public void setGastritisHealthMethodService(GastritisHealthMethodService gastritisHealthMethodService) {
    this.gastritisHealthMethodService = gastritisHealthMethodService;
  }
}