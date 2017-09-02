package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.UsersBacService;
public class UsersBacController extends MultiActionController {
  private UsersBacService usersBacService;

  public UsersBacService getUsersBacService() {
    return usersBacService;
  }

  public void setUsersBacService(UsersBacService usersBacService) {
    this.usersBacService = usersBacService;
  }
}