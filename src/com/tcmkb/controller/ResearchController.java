package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.ResearchService;
public class ResearchController extends MultiActionController {
  private ResearchService researchService;

  public ResearchService getResearchService() {
    return researchService;
  }

  public void setResearchService(ResearchService researchService) {
    this.researchService = researchService;
  }
}