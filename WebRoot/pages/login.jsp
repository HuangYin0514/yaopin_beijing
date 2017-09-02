<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <?php
        if(!$userinfo):?>
        <title>您好，访客!</title>
        <?php else:?>
        <title>您好，<?php echo $userinfo['real_name'] ;?>!</title>
        <?php endif;?>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/demo.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/login_panel/css/slide.css" media="screen" />
        <!--
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
        -->
        <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
        <!-- PNG FIX for IE6 -->
        <!-- http://24ways.org/2007/supersleight-transparent-png-in-ie6 -->
        <!--[if lte IE 6]>
            <script type="text/javascript" src="/js/login_panel/js/pngfix/supersleight-min.js"></script>
        <![endif]-->

        <script src="<%=request.getContextPath() %>/js/login_panel/js/slide.js" type="text/javascript"></script>

                <style type="text/css">
            .container_button{
                margin-top:20px;
                width:20%;
                background:#008de6;
                border:1px solid #E0E0E0;
                padding:15px;

                /* Rounded corners */
                -moz-border-radius:20px;
                -khtml-border-radius: 20px;
                -webkit-border-radius: 20px;
                border-radius:20px;
            }
            .finpws{display:none;}
        </style>




    </head>

    <body>
  <?php if(!$userinfo):?>
        <!-- Panel -->
        <div id="toppanel">
            <div id="panel">
                <div class="content clearfix">
                    <div class="left">
                        <h1>注册、登录、找回密码</h1>
                        <h2>注册</h2>     
                        <p class="grey">请输入完整的注册信息!</p>
                        <h2>实名制</h2>
                        <p class="grey">请输入您的真实姓名.</p>
                          <h2>找回密码</h2>
                        <p class="grey">找回密码</p>
                    </div>


                    
                        <div class="left">
                            <!-- Login Form -->
                            <form class="clearfix namelogin" action="" method="post">
                                <h1>登录</h1>

                                
                                <label class="grey" for="username">用户:</label>
                                <input class="field" type="text" name="username" id="username" value="" size="23" />
                                <label class="grey" for="password">密码:</label>
                                <input class="field" type="password" name="password" id="password" size="23" />
                                <label><input name="rememberMe" id="rememberMe" type="checkbox" checked="checked" value="1" /> &nbsp;记住我</label>
                                <div class="clear"></div>
                                <input type="submit" id ='login' value="登录" class="bt_login" />
                                <input type="" id ='findword' value="找回密码" class="findword" />
                            </form>
                            <form class="finpws">
                                <h1>找回密码</h1>
                                <p class='setmobile'>
                                    <label class="grey" for="find_username_email">用户名或邮箱:</label>
                                    <input class="field" type="text" name="username_email" id="username_email" value="" size="23" />
                                <!--     <span  onclick='switchEmail()'>或切换邮箱</spaemailn> -->
                                </p>
                              <!--   <p class='setemail'>
                                    <label class="grey" for="find_email">邮箱:</label>
                                    <input class="field" type="text" name="find_email" id="find_email" value="" size="23" />
                                    <span onclick='switchMobile()'>或切换用户名</span>
                                </p> -->
                                <input type="submit" id ='findpass' value="提交"  name="submit"  class="findword" />
                                <input type="" id ='goback' value="返回"  name=""  class="goback" />
                            </form>
                        </div> 
                        <div class="left right">            
                            <!-- Register Form -->
                            <form action="" method="post">
                                <h1>还不是用户吗? 请注册!</h1>       

                                
                                <label class="grey" for="username">用户名:</label>
                                <input class="field" type="text" name="usernames" id="usernames" value="" size="23" />
                                <label class="grey" for="password">密码:</label>
                                <input class="field" type="password" name="pass" id="pass" size="23" /> 
                                <label class="grey" for="real_name">真实姓名:</label>
                                <input class="field" type="text" name="real_name" id="real_name" size="23" />   
                                <input type="submit" id="reg" value="注册" class="bt_register" />


                            </form>
                        </div>

                                        </div>
            </div> <!-- /login -->  

            <!-- The tab on top --> 
            <div class="tab">
                <ul class="login">
                    <li class="left">&nbsp;</li>
                    <li>您好， 访客!</li>
                    <li class="sep">|</li>
                    <li id="toggle">
                        <a id="open" class="open" href="#">登录 | 注册</a>
                        <a id="close" style="display: none;" class="close" href="#">关闭</a>          
                    </li>
                    <li class="right">&nbsp;</li>
                </ul> 
            </div> <!-- / top -->

        </div> <!--panel -->
 <?php else:?>
        <!-- Panel -->
        <div id="toppanel">
            <div id="panel">
                <div class="content clearfix">
                    <div class="left">
                        <h1>注册或登录</h1>
                        <h2>注册</h2>     
                        <p class="grey">请输入完整的注册信息!</p>
                        <h2>实名制</h2>
                        <p class="grey">请输入您的真实姓名.</p>
                    </div>


                    
                        <div class="left">

                            <h1>您好， <?php echo $userinfo['real_name'] ;?>!</h1>
                            <p>您已经成功登录</p>
                            <a href="<?=base_url('member/user/edit')?>">请查看并编辑您的信息</a>
                            <p>- 或 -</p>
                            <a href="<?=base_url('member/user/logout')?>">注销</a>

                        </div>

                        <div class="left right">
                        </div>

                                    </div>
            </div> <!-- /login -->  

            <!-- The tab on top --> 
            <div class="tab">
                <ul class="login">
                    <li class="left">&nbsp;</li>
                    <li>您好， <?php echo $userinfo['real_name'] ;?>!</li>
                    <li class="sep">|</li>
                    <li id="toggle">
                        <a id="open" class="open" href="#">打开</a>
                        <a id="close" style="display: none;" class="close" href="#">关闭</a>          
                    </li>
                    <li class="right">&nbsp;</li>
                </ul> 
            </div> <!-- / top -->

        </div> <!--panel -->
    <?php endif;?>
        <div class="pageContent">
            <div id="main">
                <div align="center" class="container">
                    <img width ="100%" src ="<%=request.getContextPath() %>/images/banner.jpg"></img>    
                </div>
                <div class="container">

                    <p><strong>简介：</strong>
                        <br />

中国中医科学院中医药信息研究所长期致力于中医药领域数字资源的建设与利用工作，成功研制了中医药学语言系统、
                                中医临床术语集等大型术语系统，以及结构性文献数据库(方剂数据库,医案数据库)。本网站集成了中医药领域的领域本体、术语资源
                                （包括中医药学语言系统、中医临床术语集、中医古籍语言系统等），以及证候、中药、方剂等领域的知识库，面向中医专家提供知识检索
                                、知识问答、知识浏览等服务。                    </p>
                    <div align="center"><div class="container_button">
                            <a href="index.php"><font face="微软雅黑" color="white">进入系统</font></a>
                        </div></div>

                    <div class="clear"></div>
                </div>

                <div class="container tutorial-info">
                    <p><a href="yutong" target="_blank">于彤</a>设计</p>
                    <p>© 中国中医科学院中医药信息研究所</p>
                </div>
            </div>

    </body>
</html>
<script src="<%=request.getContextPath() %>/static/js/jquery-1.9.1.min.js"></script>
<script src="<%=request.getContextPath() %>/static/layer/1.8.5/layer.min.js"></script>

<script src="<%=request.getContextPath() %><?=STATICURL?>js/verify.js"></script>
<script type="text/javascript">
    //登录函数
    function doLogin(){
        var username = $.trim($("#username").val());
        var password = $.trim($("#password").val());
        if( ! (isUsername(username)) ){
            layer.tips("提示：账号格式错误！", $("#username"), {time:2});
            alert("提示：账号格式错误！");
            $("#username").focus();
            return false;
        }else if( ! isPassword(password)){
            layer.tips("提示：密码格式错误！", $("#password"), {time:2});
            alert("提示：密码格式错误！");
            $("#password").focus();
            return false;
        }
        var load_index = layer.load('正在登录...');
        $.ajax({
            url: "<?=base_url('member/user/ajax_login')?>",
            type: "post",
            dataType: "json",
            data: {"username":username, "password":password},
            success: function(data){
                layer.close(load_index);
                if(data.err_no == 0){
                   layer.msg("登录成功！", 2, 1, function(){ location.href="<?=base_url(WEB_LOGIN)?>";});
				   
                }else if(data.err_no == 1003){
                    layer.msg("用户名或密码错误！", 2, 5);
                    alert("用户名或密码错误！");
                }else if(data.err_no == 1010){
                    layer.msg("该账号已被禁用！", 2, 5);
                    alert("该账号已被禁用！");
                }else{
                    layer.msg(data.err_msg,4,5);
                    alert(data.err_msg);
                }
            }
        });
    }

    //回车键登录
    function keydown(e){
        var currKey = 0, e = e || event;
        if(e.keyCode == 13){
            doLogin();
        }
    }
    document.onkeydown = keydown;
    //按钮事件登录
    $('#login').click(function (){
            doLogin();
        });

</script>
<script type="text/javascript">
    //找回密码
    function getPass(){
        var username_email = $.trim($("#username_email").val());
        if( ! (isUsername(username_email))&&! (isEmail(username_email))){
            layer.tips("提示：账号格式错误！", $("#username_email"), {time:2});
            $("#username_email").focus();
            return false;
        }
        var load_index = layer.load('正在发送...');
        $.ajax({
            url: "<?=base_url('findpwd/ajax_submit')?>",
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
    //按钮事件登录
    $('#findpass').click(function (){
            getPass();
        });

</script>
<script type="text/javascript">
    //登录函数
    function doReg(){
        var username = $.trim($("#usernames").val());
        var pass = $.trim($("#pass").val());
        var real_name = $.trim($("#real_name").val());
        if( ! (isUsername(username) || isMobile(username) || isEmail(username)) ){
            layer.tips("提示：账号格式错误！", $("#usernames"), {time:2});
            $("#username").focus();
			alert("提示：账号格式错误！");
            return false;
        }else if( ! isPassword(pass)){
            layer.tips("提示：密码格式错误！", $("#pass"), {time:2});
			alert("提示：密码格式错误！");
            $("#pass").focus();
            return false;
        }
        var load_index = layer.load('正在注册...');
        $.ajax({
            url: "<?=base_url('member/user/ajax_reg')?>",
            type: "post",
            dataType: "json",
            data: {"account":username, "pass":pass,"repass":pass, "real_name":real_name},
            success: function(data){
                layer.close(load_index);
                alert(data);
                if(data.err_no == 0){
                    layer.msg("注册成功！", 2, 1, function(){ location.href="<?=base_url(WEB_LOGIN)?>";});
                }else{
                    layer.msg(data.err_msg,4,5);
                }
            }
        });
    }


    document.onkeydown = keydown;
    //按钮事件登录
    $('#reg').click(function (){
            doReg();
        });

    $(function(){
        $('.findword').click(function(){
            $('.namelogin').hide();
            $('.finpws').show();
        })
        $(".goback").click(function(){
            $('.namelogin').show();
            $('.finpws').hide();
            
        })
        
    })
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

 
</script>
