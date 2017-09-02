package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.JournalsService;
public class JournalsController extends MultiActionController {
  private JournalsService journalsService;

  public JournalsService getJournalsService() {
    return journalsService;
  }

  public void setJournalsService(JournalsService journalsService) {
    this.journalsService = journalsService;
  }
}