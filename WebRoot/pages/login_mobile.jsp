<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, minimal-ui"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="mobile-web-app-capable" content="yes"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
<meta name="apple-mobile-web-app-title" content=""/>
<meta name="format-detection" content="telphone=no, email=no"/>
<meta name="apple-itunes-app" content="app-id="/>

<title></title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css" />
<style>
    .wrapper {
        width: 100%;
        margin: 0px auto;
    }
    .container h3{width:100%;text-align:center;line-height:40px;font-size:1.4em;font-weight:bold;}
    .container .login_row p{margin:15px auto;float:none;}
    .container .login_row  input{border:1px solid #ccc;border-radius:5px;line-height:40px;width:96%;padding:0 2%;}
    .login_btn{color:#fff;}
    .login_btn a{color:#fff;width:96%;display:block;background-color: #428bca;text-align:center;line-height:40px;border-radius:5px;font-size:20px;font-weight:bold;text-decoration:none;}
</style>
</head>
<body style='background-color: rgb(245, 245, 245);'>
<div class='wrapper'>
    <a href="?lang=zh_CN">中文</a>
    <a href="?lang=en_US">英文</a>
        <div class='container'>
            <h3>${data.erp_name}</h3>
            <form class="clearfix namelogin" action="" method="post">
                <div class='row login_row'>
                    <p class='col-md-8'>
                        <input type='text' name="username" id="username" placeholder='<spring:message code="username" />' />
                    </p>
                    <p class='col-md-8'>
                        <input type='password' name="password" id="password" placeholder='<spring:message code="password" />'/>
                    </p>
                    <p class='col-md-8 login_btn'>
                       <a href="javascript:;"  onclick="doLogin()"><spring:message code="login" /></a>
                    </p>
                    <p class='col-md-8'>
                        <span class='login_register' style='cursor:pointer;'><spring:message code="Quick_registration" /></span>
                        <span class="findword"><spring:message code="Password_retrieval" /></span>
                        <a href="http://localhost:9302/help/中医药知识服务平台用户使用手册.pdf">
                        <span style='float:right;margin-right:5%;cursor:pointer;' class="findword" download="中医药知识服务平台用户使用手册.pdf">
                        <spring:message code="Download_instructions" />
                        </span>
                        </a>
                    </p>
                </div>
             </form>
             <form class="clearfix finpws" action="" method="post" style='display:none;'>
                <div class='row login_row'>
                    <p class='col-md-8'>
                        <input type='text'  name="username_email" id="username_email" placeholder='用户名' size="23" />
                    </p>
                    
                    <p class='col-md-8 login_btn'>
                       <a href="javascript:;"  onclick="getPass()">找回密码</a>
                    </p>
                    <p class='col-md-8'>
                        <span id ='goback'  class="goback" style='float:right;cursor:pointer;margin-right:5%;'>返回登录页</span>
                    </p>
                </div>
             </form>
             <form  action="" method="post" class='register' style='display:none;'>
                <div class='row login_row'>
                    <p class='col-md-8'>
                        <input type='text' name="usernames" id="usernames" value="" size="23" placeholder='用户名' />
                        <input type="hidden" name="score" id="score" value="0">
                    </p>
                    <p class='col-md-8'>
                        <input type="password" name="pass" id="pass" placeholder='密码'/>
                    </p>
                    <p class='col-md-8'>
                        <input type="text" name="real_name" id="real_name" size="23" placeholder='真实姓名'/>
                    </p>
                    <p class='col-md-8'>
                    <input type="text" name="affiliation" id="affiliation" size="23" placeholder='单位'/>                     
                    </p>
                    <p class='col-md-8'>
                    <input type="text" name="email" id="email" size="23" placeholder='电子邮箱'/>
                    </p>
                    <p class='col-md-8'>
                    <input type="text" name="phonnum" id="phonnum" size="23" placeholder='手机号码'/>
                    </p>
                    <p class='col-md-8 login_btn'>
                       <a href="javascript:;"  id="reg" onclick="doReg()"  class="bt_register">注册</a>
                    </p>
                    <p class='col-md-8'>
                        已有账号&nbsp;&nbsp;<span class='go_login' style='color:#428bca;cursor:pointer;'>登录</span>
                    </p>
                </div>
             </form>
        </div>
</div>
   <?php
  if(!(isset($_SESSION['uri']))){
      $_SESSION['uri'] = '';
  }
   ?>
<div class="container" align="center">   
    <footer class="footer">
         <p><spring:message code="Contacts" />：${data.contact}；&nbsp;&nbsp;<spring:message code="Program_design" />：${data.developers}</p>
        <p><spring:message code="Support_unit" />：<a href="${data.rely_on_company_url}">${data.rely_on_company}</a></p>
        <p><spring:message code="Cooperative_unit" />：${data.cooperation_company}</p>
        <p>${data.containsKey(x)}</p>
<br>
 <p><font color="red"><spring:message code="It_is_recommended_to_use_Firefox,_Google,_Chrome_or_IE_browsers_to_use_this_platform" /></font></p>
    </footer>
    </div>
</body>
<script src="<%=request.getContextPath() %>/js/jquery-1.9.1.min.js"></script>
<script src="<%=request.getContextPath() %>/js/layer/1.8.5/layer.min.js"></script>

<script src="<%=request.getContextPath() %>/js/verify.js"></script>
<script type="text/javascript">
    //登录函数
    function doLogin(){
        var username = $.trim($("#username").val());
        var password = $.trim($("#password").val());
        if( ! (isUsername(username)) ){
            layer.tips("提示：账号格式错误！", $("#username"), {time:2});
            $("#username").focus();
            return false;
        }else if( ! isPassword(password)){
            layer.tips("提示：密码格式错误！", $("#password"), {time:2});
            $("#password").focus();
            return false;
        }
        var load_index = layer.load('正在登录...');
        $.ajax({
            url: "/tcmkb/login.do",
            type: "post",
            dataType: "json",
            data: {"username":username, "password":password},
            success: function(data){
                layer.close(load_index);
                if(data.err_no == 0){
                   layer.msg("登录成功！", 2, 1, function(){ location.href="<?php echo base_url().$_SESSION['uri']?>";});
                }else if(data.err_no == 1003){
                    layer.msg("用户名或密码错误！", 2, 5);
                }else if(data.err_no == 1010){
                    layer.msg("该账号已被禁用！", 2, 5);
                }else{
                    layer.msg(data.err_msg,4,5);
                }
            }
        });
    }


</script>
<script type="text/javascript">
    //找回密码
    function getPass(){
        var username_email = $.trim($("#username_email").val());
        if( ! (isUsername(username_email))&& ! (isEmail(username_email))){
            layer.tips("提示：账号格式错误！", $("#username_email"), {time:2});
            $("#username_email").focus();
            return false;
        }
        var load_index = layer.load('正在发送...');
        $.ajax({
            url: "/tcmkb/getPassfromMail.do",
            type: "post",
            dataType: "json",
            data: {"username_email":username_email},
            success: function(data){
                layer.close(load_index);
                if(data.err_no == 0){
                   layer.msg("邮件发送成功！", 2, 1, function(){ location.href="/findpwd/reset/email?email="+data.results;});
                }else{
                    layer.msg(data.err_msg,4,5);
                }
            }
        });
    }


</script>
<script type="text/javascript">
    //注册函数
    function doReg(){
        var username = $.trim($("#usernames").val());
        var pass = $.trim($("#pass").val());
        var real_name = $.trim($("#real_name").val());
        var score = $.trim($("#score").val());
        var affiliation = $.trim($("#affiliation").val());
        var email = $.trim($("#email").val());
        var phonnum=$.trim($("#phonnum").val());
     
    
        if( ! (isUsername(username) || isMobile(username) || isEmail(username)) ){
            layer.tips("提示：账号格式错误！", $("#usernames"), {time:2});
            $("#usernames").focus();
            return false;
        }
        if( ! isPassword(pass)){
            layer.tips("提示：密码格式错误！", $("#pass"), {time:2});
            $("#pass").focus();
            return false;
        }
        if( ! isEmail(email)){
            layer.tips("提示：邮箱格式错误！", $("#email"), {time:2});
            $("#email").focus();
            return false;
        }
        if( ! isMobile(phonnum)){
            layer.tips("提示：手机号格式错误！", $("#phonnum"), {time:2});
            $("#mobile").focus();
            return false;
        }  
        var load_index = layer.load('正在注册...');
        $.ajax({
            url: "/tcmkb/reg.do",
            type: "post",
            dataType: "json",
            data: {"account":username, "pass":pass,"repass":pass, "real_name":real_name,"score":score,"affiliation":affiliation,"email":email,"mobile":phonnum},
            success: function(data){
                layer.close(load_index);
                console.log(data);
                if(data.err_no == 0){
                    layer.msg("注册成功！", 2, 1, function(){ location.href="<?=base_url(WEB_LOGIN)?>";});
                }else{
                    layer.msg(data.err_msg,4,5);
                }
            }
        });
    }



    var verify_type = "mobile";
        //绑定手机
        function switchMobile(){
            verify_type = "mobile";
            $(".setemail").hide();
            $(".setmobile").show();
            
        }
        //绑定邮箱
        function switchEmail(){
            verify_type = "email";
            $(".setemail").show();
            $(".setmobile").hide();
            
        }
        $(function(){
            $('.findword').click(function(){
                $('.namelogin').hide();
                $('.finpws').show();
            })
            $(".goback").click(function(){
                $('.namelogin').show();
                $('.finpws').hide();
                
            })
            $('.login_register').click(function(){
                $('.register').show();
                $('.namelogin').hide();
                
            })
            $('.go_login').click(function(){
                $('.namelogin').show();
                $('.register').hide();
                
            })
        })
 
</script>
</html>