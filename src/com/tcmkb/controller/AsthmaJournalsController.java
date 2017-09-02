package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaJournalsService;
public class AsthmaJournalsController extends MultiActionController {
  private AsthmaJournalsService asthmaJournalsService;

  public AsthmaJournalsService getAsthmaJournalsService() {
    return asthmaJournalsService;
  }

  public void setAsthmaJournalsService(AsthmaJournalsService asthmaJournalsService) {
    this.asthmaJournalsService = asthmaJournalsService;
  }
}