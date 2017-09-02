<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<iframe src="/pages/common/no_login.html" frameborder=0></iframe>
<div class="container">  
    <h1><font face="微软雅黑" color="black"><strong>修改密码</strong></font></h1>      
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="container">
                <br/>
                                <div class="form-horizontal">                    
                   <?php 
        if(!$userinfo):?>
            <p class="lead text-muted">您的用户名为: <strong class="text-primary"></strong>,请输入您的验证码，再设定新密码：</p>
        <?php else:?>
          <p class="lead text-muted">您的用户名为: <strong class="text-primary"><?php echo $userinfo['account'] ;?></strong>,请输入您的验证码，再设定新密码：</p>
                    <hr/>
                    <div class = "form-group">
                        <label class = "col-sm-2 control-label" for = "pwd">邮箱: </label>
                        <div class = "col-sm-8">
                            <input class = "form-control" type = "text" id = "email" name = "email" value=" <?php echo $userinfo['email'] ;?>">
                        </div>
                    </div>
                    <hr/>
                     <div class = "form-group">
                        <label class = "col-sm-2 control-label" for = "verify">验证码: </label>
                        <div class = "col-sm-8">
                            <input class = "form-control" type = "text" id = "verify" name = "verify" placeholder="请输入验证码" >
                        </div>
                    </div>
                    <hr/>
                    <div class = "form-group">
                        <label class = "col-sm-2 control-label" for = "pwd1">新密码: </label>
                        <div class = "col-sm-8">
                            <input class = "form-control" type = "password" id = "password" name = "password">
                        </div>
                    </div>
                    <hr/>
                    <div class = "form-group">
                        <label class = "col-sm-2 control-label" for = "pwd2">请重新输入新密码: </label>
                        <div class = "col-sm-8">
                            <input class = "form-control" type = "password" id = "password1" name = "password1">
                        </div>
                    </div>

                    <hr/>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input class="btn btn-primary" type="submit" name="submit" onclick="doSubmit()" value="&nbsp;&nbsp;提 交&nbsp;&nbsp;" />   
                            &emsp;
                            <a class="btn btn-default" href="<?=base_url('member/user/edit_pass')?>">&nbsp;&nbsp;取&nbsp;消&nbsp;&nbsp;</a>  
                        </div>
                    </div>
                    <br/>
                     <?php endif;?>
                </div>
            </div>
        </div>
    </div>             
</div>

<iframe src="/pages/common/foot.html" frameborder=0></iframe>
<script src="<%=request.getContextPath() %>/js/verify.js"></script>
<script type="text/javascript">
//提交信息
function doSubmit(){
    var email = $.trim($("#email").val());
    var verify = $.trim($("#verify").val());
    var password = $.trim($("#password").val());
    var password1 = $.trim($("#password1").val());
    if( ! isEmail(email)){
        layer.tips("提示：邮箱格式错误！", $("#email"), {time:2});
        $("#email").focus();
        return false;
    }
    if(verify == ""){
        layer.tips("提示：请输入验证码！", $("#verify"), {time:2});
        $("#verify").focus();
        return false;
    }
    if( ! isPassword(password)){
        layer.tips("提示：密码格式错误！", $("#password"), {time:2});
        $("#password").focus();
        return false;
    }
    if(password != password1){
        layer.tips("提示：两次输入的密码不一致！", $("#password1"), {time:2});
        $("#password2").focus();
        return false;
    }
    layer.load("提交中...");
    $.ajax({
        url: "<?=base_url('findpwd/ajax_email')?>",
        type: "post",
        dataType: "json",
        data: {"email":email, "verify":verify, "password":password},
        success: function(data){
            if(data.err_no == 0){
                layer.msg("修改密码成功！", 2, 1, function(){ location.href = "<?=base_url(WEB_LOGIN)?>"});
            }else if(data.err_no == 1003){
                layer.msg("账号或邮箱错误！", 2, 5);
            }else if(data.err_no == 1004){
                layer.msg("验证码错误或已过期！", 2, 5);
            }else{
                layer.msg("操作失败请重试！", 2, 5);
            }
        }
    });
}
</script>

