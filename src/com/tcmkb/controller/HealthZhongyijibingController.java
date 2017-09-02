package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthZhongyijibingService;
public class HealthZhongyijibingController extends MultiActionController {
private HealthZhongyijibingService healthZhongyijibingService;

public HealthZhongyijibingService getHealthZhongyijibingService() {
  return healthZhongyijibingService;
}

public void setHealthZhongyijibingService(HealthZhongyijibingService healthZhongyijibingService) {
  this.healthZhongyijibingService = healthZhongyijibingService;
}
}