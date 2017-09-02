package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaChinesePatentDrugService;
public class AsthmaChinesePatentDrugController extends MultiActionController {
  private AsthmaChinesePatentDrugService asthmaChinesePatentDrugService;

  public AsthmaChinesePatentDrugService getAsthmaChinesePatentDrugService() {
    return asthmaChinesePatentDrugService;
  }

  public void setAsthmaChinesePatentDrugService(AsthmaChinesePatentDrugService asthmaChinesePatentDrugService) {
    this.asthmaChinesePatentDrugService = asthmaChinesePatentDrugService;
  }
}