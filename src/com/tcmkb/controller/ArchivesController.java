package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.ArchivesService;
public class ArchivesController extends MultiActionController {
  private ArchivesService archivesService;

  public ArchivesService getArchivesService() {
    return archivesService;
  }

  public void setArchivesService(ArchivesService archivesService) {
    this.archivesService = archivesService;
  }
}