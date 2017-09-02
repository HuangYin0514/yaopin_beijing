package com.tcmkb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import com.tcmkb.service.HealthZhongyiyangshensixiangService;
public class HealthZhongyiyangshensixiangController extends MultiActionController {
    private HealthZhongyiyangshensixiangService healthZhongyiyangshensixiangService;
    
    public HealthZhongyiyangshensixiangService getHealthZhongyiyangshensixiangService() {
      return healthZhongyiyangshensixiangService;
    }
    
    public void setHealthZhongyiyangshensixiangService(HealthZhongyiyangshensixiangService healthZhongyiyangshensixiangService) {
      this.healthZhongyiyangshensixiangService = healthZhongyiyangshensixiangService;
    }
}