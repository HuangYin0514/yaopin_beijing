package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AsthmaCaseRecordService;
public class AsthmaCaseRecordController extends MultiActionController {
  private AsthmaCaseRecordService asthmaCaseRecordService;

  public AsthmaCaseRecordService getAsthmaCaseRecordService() {
    return asthmaCaseRecordService;
  }

  public void setAsthmaCaseRecordService(AsthmaCaseRecordService asthmaCaseRecordService) {
    this.asthmaCaseRecordService = asthmaCaseRecordService;
  }
}