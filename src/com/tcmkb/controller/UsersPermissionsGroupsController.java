package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.UsersPermissionsGroupsService;
public class UsersPermissionsGroupsController extends MultiActionController {
  private UsersPermissionsGroupsService usersPermissionsGroupsService;

  public UsersPermissionsGroupsService getUsersPermissionsGroupsService() {
    return usersPermissionsGroupsService;
  }

  public void setUsersPermissionsGroupsService(UsersPermissionsGroupsService usersPermissionsGroupsService) {
    this.usersPermissionsGroupsService = usersPermissionsGroupsService;
  }
}