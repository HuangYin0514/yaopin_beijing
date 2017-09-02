package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.UsersPermissionsService;
public class UsersPermissionsController extends MultiActionController {
  private UsersPermissionsService usersPermissionsService;

  public UsersPermissionsService getUsersPermissionsService() {
    return usersPermissionsService;
  }

  public void setUsersPermissionsService(UsersPermissionsService usersPermissionsService) {
    this.usersPermissionsService = usersPermissionsService;
  }
}