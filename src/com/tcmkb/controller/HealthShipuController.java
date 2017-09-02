package com.tcmkb.controller;

import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.tcmkb.service.HealthShipuService;
public class HealthShipuController extends MultiActionController {
  private HealthShipuService healthShipuService;

  public HealthShipuService getHealthShipuService() {
    return healthShipuService;
  }

  public void setHealthShipuService(HealthShipuService healthShipuService) {
    this.healthShipuService = healthShipuService;
  }
}