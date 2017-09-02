package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisTraditionalChineseMedicineService;
public class GastritisTraditionalChineseMedicineController extends MultiActionController {
  private GastritisTraditionalChineseMedicineService gastritisTraditionalChineseMedicineService;

  public GastritisTraditionalChineseMedicineService getGastritisTraditionalChineseMedicineService() {
    return gastritisTraditionalChineseMedicineService;
  }

  public void setGastritisTraditionalChineseMedicineService(GastritisTraditionalChineseMedicineService gastritisTraditionalChineseMedicineService) {
    this.gastritisTraditionalChineseMedicineService = gastritisTraditionalChineseMedicineService;
  }
}