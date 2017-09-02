package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisJournalsService;
public class GastritisJournalsController extends MultiActionController {
  private GastritisJournalsService gastritisJournalsService;

  public GastritisJournalsService getGastritisJournalsService() {
    return gastritisJournalsService;
  }

  public void setGastritisJournalsService(GastritisJournalsService gastritisJournalsService) {
    this.gastritisJournalsService = gastritisJournalsService;
  }
}