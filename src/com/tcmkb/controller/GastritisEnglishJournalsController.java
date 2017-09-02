package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisEnglishJournalsService;
public class GastritisEnglishJournalsController extends MultiActionController {
  private GastritisEnglishJournalsService gastritisEnglishJournalsService;

  public GastritisEnglishJournalsService getGastritisEnglishJournalsService() {
    return gastritisEnglishJournalsService;
  }

  public void setGastritisEnglishJournalsService(GastritisEnglishJournalsService gastritisEnglishJournalsService) {
    this.gastritisEnglishJournalsService = gastritisEnglishJournalsService;
  }
}