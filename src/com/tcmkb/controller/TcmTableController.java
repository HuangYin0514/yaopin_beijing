package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.TcmTableService;
public class TcmTableController extends MultiActionController {
  private TcmTableService tcmTableService;

  public TcmTableService getTcmTableService() {
    return tcmTableService;
  }

  public void setTcmTableService(TcmTableService tcmTableService) {
    this.tcmTableService = tcmTableService;
  }
}