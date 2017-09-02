package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisResearchService;
public class GastritisResearchController extends MultiActionController {
  private GastritisResearchService gastritisResearchService;

  public GastritisResearchService getGastritisResearchService() {
    return gastritisResearchService;
  }

  public void setGastritisResearchService(GastritisResearchService gastritisResearchService) {
    this.gastritisResearchService = gastritisResearchService;
  }
}