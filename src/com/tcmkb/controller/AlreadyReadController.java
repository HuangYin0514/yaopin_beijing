package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AlreadyReadService;
public class AlreadyReadController extends MultiActionController {
  private AlreadyReadService alreadyReadService;

  public AlreadyReadService getAlreadyReadService() {
    return alreadyReadService;
  }

  public void setAlreadyReadService(AlreadyReadService alreadyReadService) {
    this.alreadyReadService = alreadyReadService;
  }
}