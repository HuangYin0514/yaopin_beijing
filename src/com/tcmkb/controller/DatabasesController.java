package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.DatabasesService;
public class DatabasesController extends MultiActionController {
  private DatabasesService databasesService;

  public DatabasesService getDatabasesService() {
    return databasesService;
  }

  public void setDatabasesService(DatabasesService databasesService) {
    this.databasesService = databasesService;
  }
}