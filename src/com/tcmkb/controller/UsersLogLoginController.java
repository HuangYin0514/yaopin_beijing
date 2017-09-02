package com.tcmkb.controller;

import com.tcmkb.model.Users;
import com.tcmkb.service.UsersLogLoginService;
import com.tcmkb.utils.CodeInfo;
import com.tcmkb.utils.IndexResult;
import com.tcmkb.utils.MD5Util;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class UsersLogLoginController {
  private UsersLogLoginService usersLogLoginService;

  /**
   * 验证登陆
   * @param username
   * @param password
   * @param session
   * @return
   */
  @RequestMapping(value = "/login.do",method = RequestMethod.POST)
  @ResponseBody
  public IndexResult b(String username, String password, HttpSession session){
    Users users = new Users();
    users.setAccount(username);
    users.setPass(password);
    IndexResult indexResult = usersLogLoginService.queryUser(users);
    if (indexResult.getErr_no()== CodeInfo.SUCCESS_LOGIN){
      session.setAttribute("user",users);
    }
    return indexResult;
  }

  public UsersLogLoginService getUsersLogLoginService() {
    return usersLogLoginService;
  }

  public void setUsersLogLoginService(UsersLogLoginService usersLogLoginService) {
    this.usersLogLoginService = usersLogLoginService;
  }
}