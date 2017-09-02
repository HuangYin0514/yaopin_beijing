package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HerbZhongyaoService;
public class HerbZhongyaoController extends MultiActionController {
  private HerbZhongyaoService herbZhongyaoService;

  public HerbZhongyaoService getHerbZhongyaoService() {
    return herbZhongyaoService;
  }

  public void setHerbZhongyaoService(HerbZhongyaoService herbZhongyaoService) {
    this.herbZhongyaoService = herbZhongyaoService;
  }
}