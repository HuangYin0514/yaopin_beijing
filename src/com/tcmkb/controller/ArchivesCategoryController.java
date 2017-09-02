package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.ArchivesCategoryService;
public class ArchivesCategoryController extends MultiActionController {
  private ArchivesCategoryService archivesCategoryService;

  public ArchivesCategoryService getArchivesCategoryService() {
    return archivesCategoryService;
  }

  public void setArchivesCategoryService(ArchivesCategoryService archivesCategoryService) {
    this.archivesCategoryService = archivesCategoryService;
  }
}