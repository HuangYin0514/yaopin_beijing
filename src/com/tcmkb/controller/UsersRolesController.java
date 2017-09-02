package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.UsersRolesService;
public class UsersRolesController extends MultiActionController {
  private UsersRolesService usersRolesService;

  public UsersRolesService getUsersRolesService() {
    return usersRolesService;
  }

  public void setUsersRolesService(UsersRolesService usersRolesService) {
    this.usersRolesService = usersRolesService;
  }
}