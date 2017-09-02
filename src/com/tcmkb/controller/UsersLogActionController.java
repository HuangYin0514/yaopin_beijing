package com.tcmkb.controller;

import com.tcmkb.model.UsersWithBLOBs;
import com.tcmkb.service.UsersLogActionService;
import com.tcmkb.utils.CodeInfo;
import com.tcmkb.utils.IndexResult;
import com.tcmkb.utils.SendEmail;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UsersLogActionController {
  private UsersLogActionService usersLogActionService;

  /**
   * 用户注册
   * @param usersWithBLOBs
   * @return
   */
  @RequestMapping(value = "/reg.do" )
  @ResponseBody
  public IndexResult reg(UsersWithBLOBs usersWithBLOBs){
    IndexResult indexResult = usersLogActionService.saveUser(usersWithBLOBs);
    return indexResult;
  }

  /**
   * 找回密码
   * @param username_email
   * @return
   */
  @RequestMapping(value = "/getPassfromMail.do" )
  @ResponseBody
  public IndexResult getPassfromMail(String username_email){
    IndexResult indexResult = new IndexResult();
    try {
      SendEmail.sendEmail(username_email,"测试");
      indexResult.setErr_no(CodeInfo.SUCCESS_LOGIN);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return indexResult;
  }



  public UsersLogActionService getUsersLogActionService() {
    return usersLogActionService;
  }

  public void setUsersLogActionService(UsersLogActionService usersLogActionService) {
    this.usersLogActionService = usersLogActionService;
  }
}