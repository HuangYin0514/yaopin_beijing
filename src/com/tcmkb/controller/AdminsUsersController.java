package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.AdminsUsersService;
public class AdminsUsersController extends MultiActionController {
  private AdminsUsersService adminsUsersService;

  public AdminsUsersService getAdminsUsersService() {
    return adminsUsersService;
  }

  public void setAdminsUsersService(AdminsUsersService adminsUsersService) {
    this.adminsUsersService = adminsUsersService;
  }
}