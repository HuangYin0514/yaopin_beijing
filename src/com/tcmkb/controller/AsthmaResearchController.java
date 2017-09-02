package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaResearchService;
public class AsthmaResearchController extends MultiActionController {
  private AsthmaResearchService asthmaResearchService;

  public AsthmaResearchService getAsthmaResearchService() {
    return asthmaResearchService;
  }

  public void setAsthmaResearchService(AsthmaResearchService asthmaResearchService) {
    this.asthmaResearchService = asthmaResearchService;
  }
}