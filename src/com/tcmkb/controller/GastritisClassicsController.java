package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisClassicsService;
public class GastritisClassicsController extends MultiActionController {
  private GastritisClassicsService gastritisClassicsService;

  public GastritisClassicsService getGastritisClassicsService() {
    return gastritisClassicsService;
  }

  public void setGastritisClassicsService(GastritisClassicsService gastritisClassicsService) {
    this.gastritisClassicsService = gastritisClassicsService;
  }
}