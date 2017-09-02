package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisResearchCopyService;
public class GastritisResearchCopyController extends MultiActionController {
  private GastritisResearchCopyService gastritisResearchCopyService;

  public GastritisResearchCopyService getGastritisResearchCopyService() {
    return gastritisResearchCopyService;
  }

  public void setGastritisResearchCopyService(GastritisResearchCopyService gastritisResearchCopyService) {
    this.gastritisResearchCopyService = gastritisResearchCopyService;
  }
}