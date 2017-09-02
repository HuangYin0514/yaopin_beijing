package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.UsersFindpassService;
public class UsersFindpassController extends MultiActionController {
  private UsersFindpassService usersFindpassService;

  public UsersFindpassService getUsersFindpassService() {
    return usersFindpassService;
  }

  public void setUsersFindpassService(UsersFindpassService usersFindpassService) {
    this.usersFindpassService = usersFindpassService;
  }
}