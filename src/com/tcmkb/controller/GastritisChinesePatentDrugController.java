package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisChinesePatentDrugService;
public class GastritisChinesePatentDrugController extends MultiActionController {
  private GastritisChinesePatentDrugService gastritisChinesePatentDrugService;

  public GastritisChinesePatentDrugService getGastritisChinesePatentDrugService() {
    return gastritisChinesePatentDrugService;
  }

  public void setGastritisChinesePatentDrugService(GastritisChinesePatentDrugService gastritisChinesePatentDrugService) {
    this.gastritisChinesePatentDrugService = gastritisChinesePatentDrugService;
  }
}