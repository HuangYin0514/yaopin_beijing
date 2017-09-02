package com.tcmkb.controller;

import com.tcmkb.service.SystemConfigsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Controller
public class SystemConfigsController{
  private SystemConfigsService systemConfigsService;

  @RequestMapping("/systemConfigs.php")
  public ModelAndView index(HttpServletRequest request,HttpServletResponse response){
    ModelAndView view =new ModelAndView();
    Map<String,Object> map=new HashMap<String,Object>();
    List <Map<String,Object>> list = systemConfigsService.listAllwithNoParam();
    for(Map<String,Object> item:list){
      map.put((String) item.get("config_key"), item.get("config_name"));
    }

      view.setViewName("login_mobile");
    return view.addObject("data", map);
  }

  public SystemConfigsService getSystemConfigsService() {
    return systemConfigsService;
  }

  public void setSystemConfigsService(SystemConfigsService systemConfigsService) {
    this.systemConfigsService = systemConfigsService;
  }
}