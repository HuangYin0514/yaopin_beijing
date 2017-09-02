package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.ActionsService;
public class ActionsController extends MultiActionController {
  private ActionsService actionsService;

  public ActionsService getActionsService() {
    return actionsService;
  }

  public void setActionsService(ActionsService actionsService) {
    this.actionsService = actionsService;
  }
}