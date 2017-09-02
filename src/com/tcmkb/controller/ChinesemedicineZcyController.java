package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.ChinesemedicineZcyService;
public class ChinesemedicineZcyController extends MultiActionController {
  private ChinesemedicineZcyService chinesemedicineZcyService;

  public ChinesemedicineZcyService getChinesemedicineZcyService() {
    return chinesemedicineZcyService;
  }

  public void setChinesemedicineZcyService(ChinesemedicineZcyService chinesemedicineZcyService) {
    this.chinesemedicineZcyService = chinesemedicineZcyService;
  }
}