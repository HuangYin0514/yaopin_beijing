package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaTraditionalChineseMedicineService;
public class AsthmaTraditionalChineseMedicineController extends MultiActionController {
  private AsthmaTraditionalChineseMedicineService asthmaTraditionalChineseMedicineService;

  public AsthmaTraditionalChineseMedicineService getAsthmaTraditionalChineseMedicineService() {
    return asthmaTraditionalChineseMedicineService;
  }

  public void setAsthmaTraditionalChineseMedicineService(AsthmaTraditionalChineseMedicineService asthmaTraditionalChineseMedicineService) {
    this.asthmaTraditionalChineseMedicineService = asthmaTraditionalChineseMedicineService;
  }
}