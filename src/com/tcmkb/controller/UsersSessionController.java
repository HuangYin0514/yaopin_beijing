package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.UsersSessionService;
public class UsersSessionController extends MultiActionController {
  private UsersSessionService usersSessionService;

  public UsersSessionService getUsersSessionService() {
    return usersSessionService;
  }

  public void setUsersSessionService(UsersSessionService usersSessionService) {
    this.usersSessionService = usersSessionService;
  }
}