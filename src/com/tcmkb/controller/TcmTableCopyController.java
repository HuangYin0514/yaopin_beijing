package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.TcmTableCopyService;
public class TcmTableCopyController extends MultiActionController {
  private TcmTableCopyService tcmTableCopyService;

  public TcmTableCopyService getTcmTableCopyService() {
    return tcmTableCopyService;
  }

  public void setTcmTableCopyService(TcmTableCopyService tcmTableCopyService) {
    this.tcmTableCopyService = tcmTableCopyService;
  }
}