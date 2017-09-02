package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaEnglishJournalsService;
public class AsthmaEnglishJournalsController extends MultiActionController {
  private AsthmaEnglishJournalsService asthmaEnglishJournalsService;

  public AsthmaEnglishJournalsService getAsthmaEnglishJournalsService() {
    return asthmaEnglishJournalsService;
  }

  public void setAsthmaEnglishJournalsService(AsthmaEnglishJournalsService asthmaEnglishJournalsService) {
    this.asthmaEnglishJournalsService = asthmaEnglishJournalsService;
  }
}