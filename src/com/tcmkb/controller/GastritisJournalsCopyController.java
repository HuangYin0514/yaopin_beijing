package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisJournalsCopyService;
public class GastritisJournalsCopyController extends MultiActionController {
  private GastritisJournalsCopyService gastritisJournalsCopyService;

  public GastritisJournalsCopyService getGastritisJournalsCopyService() {
    return gastritisJournalsCopyService;
  }

  public void setGastritisJournalsCopyService(GastritisJournalsCopyService gastritisJournalsCopyService) {
    this.gastritisJournalsCopyService = gastritisJournalsCopyService;
  }
}