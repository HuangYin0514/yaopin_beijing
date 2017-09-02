package com.tcmkb.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.tcmkb.service.UsersService;
public class UsersController extends MultiActionController {
  private UsersService usersService;

  public ModelAndView testData(HttpServletRequest request,HttpServletResponse response){
    List<Map<String,Object>> data=new ArrayList<Map<String,Object>>();
    for(int i=0;i<10;i++){
      Map<String,Object> map=new HashMap<String, Object>();
      map.put("num", new Random().nextInt(17));
      data.add(map);
    }
    ModelAndView view =new ModelAndView();
    view.setViewName("test");
    view.addObject("data", data);
    return view;
  }
  
  
  public UsersService getUsersService() {
    return usersService;
  }

  public void setUsersService(UsersService usersService) {
    this.usersService = usersService;
  }
}