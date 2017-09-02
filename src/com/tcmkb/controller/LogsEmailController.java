package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.LogsEmailService;
public class LogsEmailController extends MultiActionController {
  private LogsEmailService logsEmailService;

  public LogsEmailService getLogsEmailService() {
    return logsEmailService;
  }

  public void setLogsEmailService(LogsEmailService logsEmailService) {
    this.logsEmailService = logsEmailService;
  }
}