package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.UsersDefaultscoreService;
public class UsersDefaultscoreController extends MultiActionController {
  private UsersDefaultscoreService usersDefaultscoreService;

  public UsersDefaultscoreService getUsersDefaultscoreService() {
    return usersDefaultscoreService;
  }

  public void setUsersDefaultscoreService(UsersDefaultscoreService usersDefaultscoreService) {
    this.usersDefaultscoreService = usersDefaultscoreService;
  }
}