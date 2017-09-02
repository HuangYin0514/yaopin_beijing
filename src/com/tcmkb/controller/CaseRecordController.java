package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.CaseRecordService;
public class CaseRecordController extends MultiActionController {
  private CaseRecordService caseRecordService;

  public CaseRecordService getCaseRecordService() {
    return caseRecordService;
  }

  public void setCaseRecordService(CaseRecordService caseRecordService) {
    this.caseRecordService = caseRecordService;
  }
}