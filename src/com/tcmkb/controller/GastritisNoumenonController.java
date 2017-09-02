package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisNoumenonService;
public class GastritisNoumenonController extends MultiActionController {
  private GastritisNoumenonService gastritisNoumenonService;

  public GastritisNoumenonService getGastritisNoumenonService() {
    return gastritisNoumenonService;
  }

  public void setGastritisNoumenonService(GastritisNoumenonService gastritisNoumenonService) {
    this.gastritisNoumenonService = gastritisNoumenonService;
  }
}