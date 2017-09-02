package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.QueueEmailService;
public class QueueEmailController extends MultiActionController {
  private QueueEmailService queueEmailService;

  public QueueEmailService getQueueEmailService() {
    return queueEmailService;
  }

  public void setQueueEmailService(QueueEmailService queueEmailService) {
    this.queueEmailService = queueEmailService;
  }
}