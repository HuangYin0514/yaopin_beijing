package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.TcmcasesGudaiyianService;
public class TcmcasesGudaiyianController extends MultiActionController {
  private TcmcasesGudaiyianService tcmcasesGudaiyianService;

  public TcmcasesGudaiyianService getTcmcasesGudaiyianService() {
    return tcmcasesGudaiyianService;
  }

  public void setTcmcasesGudaiyianService(TcmcasesGudaiyianService tcmcasesGudaiyianService) {
    this.tcmcasesGudaiyianService = tcmcasesGudaiyianService;
  }
}