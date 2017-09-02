package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.GastritisCaseRecordService;
public class GastritisCaseRecordController extends MultiActionController {
  private GastritisCaseRecordService gastritisCaseRecordService;

  public GastritisCaseRecordService getGastritisCaseRecordService() {
    return gastritisCaseRecordService;
  }

  public void setGastritisCaseRecordService(GastritisCaseRecordService gastritisCaseRecordService) {
    this.gastritisCaseRecordService = gastritisCaseRecordService;
  }
}