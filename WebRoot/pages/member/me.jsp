<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php $this->load->view('common/header')?>

 
<div class="container">  
    <h1><font face="微软雅黑" color="black"><strong>个人档案</strong></font></h1>      
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="container">
                <br/>
                                <div class="form-horizontal">   
     <?php 
        if(!$userinfo):?>
    <p class="lead text-muted">请编辑您的信息:</p>
        <?php else:?>
         <input type="hidden" name="id" value="<?php echo $userinfo['id'] ;?>">
         <input type="hidden" name="account" value="<?php echo $userinfo['account'] ;?>">
                    <a href="<?=base_url('member/user/edit_pass')?>" class="pull-right btn btn-default">修改密码</a>
                    <p class="lead text-muted">请编辑您的信息:</p>
                    <hr/>
                    <div class = "form-group"><label class = "col-sm-2 control-label">用户名: </label><div class = "col-sm-8"><label class = "control-label"><?php echo $userinfo['account'] ;?></label></div></div>
                    <hr/>
                    <div class = "form-group"><label class = "col-sm-2 control-label" for = "real_name">真实姓名: </label><div class = "col-sm-8"><input class = "form-control" type = "text" id = "real_name" name = "real_name" style="width:50%;" value = "<?php echo $userinfo['real_name'] ;?>" placeholder = "请输入姓名"></div></div>
                    <hr/>
                    <div class = "form-group"><label class = "col-sm-2 control-label" for = "E-mail">E-mail: </label><div class = "col-sm-8">
                    <input class = "form-control" style="width:50%;display:inline-block;" type = "text" id = "email" name = "email" value = "<?php echo $userinfo['email'] ;?>" placeholder = "请输入E-mail"><?php if($userinfo['email_status']==1):?>
                    <b>已认证</b>
                    <?php else: ?>
                    未认证
                     <?php endif?>
                     <?php if(filter_var($userinfo['email'], FILTER_VALIDATE_EMAIL)&&$userinfo['email_status']!=1):?>
                          <input class="btn btn-primary" type="submit" name="submitSend" onclick="doSendVerifyEmail()" value="发送验证邮件" /> 
                          <?php endif?>
                       </div></div>
                    <hr/>
                    <div class = "form-group"><label class = "col-sm-2 control-label" for = "affiliation">单位: </label><div class = "col-sm-8"><input class = "form-control" type = "text" id = "affiliation"  style="width:50%;" name = "affiliation" value = "<?php echo $userinfo['affiliation'] ;?>" placeholder = "请输入单位"></div></div>
                    <hr/>
                    <div class = "form-group"><label class = "col-sm-2 control-label" for = "job">职务: </label><div class = "col-sm-8"><input class = "form-control" type = "text" id = "job" name = "job"  style="width:50%;" value = "<?php echo $userinfo['job'] ;?>" placeholder = "请输入职务"></div></div>
                    <hr/>
                    <div class = "form-group"><label class = "col-sm-2 control-label" for = "profile">简介:</label><div class = "col-sm-8"><textarea class = "form-control" id = "profile" name = "profile" placeholder = "请输入关于您的简介" rows = "10"><?php echo $userinfo['profile'] ;?></textarea></div></div>    
                    <hr/>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input class="btn btn-primary" type="submit" name="submit" onclick="doSubmit()" value="&nbsp;&nbsp;保&nbsp;存&nbsp;&nbsp;" />   
                            &emsp;
                            <a class="btn btn-default" href="<?=base_url('member/user/edit')?>">&nbsp;&nbsp;取&nbsp;消&nbsp;&nbsp;</a>  
                        </div>
                    </div>
                    <br/>
                      <?php endif;?>
    </div>
            </div>
        </div>
    </div>             
</div>
<?php $this->load->view('common/foot')?>
<script src="/js/verify.js"></script>
<script type="text/javascript">
//提交
function doSubmit(){
    var real_name = $.trim($("#real_name").val());
    var email = $.trim($("#email").val());
    var affiliation = $.trim($("#affiliation").val());
    var job = $.trim($("#job").val());
    var profile = $.trim($("#profile").val());
    if(email != "" && ! isEmail(email)){
        layer.msg("邮箱格式不正确", 2, 5);
        $("#email").focus();
        return false;
    }
    layer.load("提交中...");
    $.ajax({
        url: "<?=base_url('member/user/ajax_upd')?>",
        type: "post",
        dataType: "json",
        data: {"real_name":real_name, "email":email, "affiliation":affiliation, "job":job, "profile":profile},
        success: function(data){
            if(data.err_no == 0){
                layer.msg("修改个人资料成功！", 2, 1, function(){ location.reload();});
            }else{
                layer.msg("修改个人资料失败！", 2, 5);
            }
        }
    });
}
</script>

<script type="text/javascript">
//发送验证邮件
function doSendVerifyEmail(){
    var email = $.trim($("#email").val());
    if(email != "" && ! isEmail(email)){
        layer.msg("邮箱格式不正确", 2, 5);
        $("#email").focus();
        return false;
    }
    layer.load("提交中...");
    $.ajax({
        url: "<?=USER_DOMAIN.'member/user/ajax_send_email'?>",
        type: "post",
        dataType: "json",
        data: {"email":email},
        success: function(data){
            if(data.err_no == 0){
                layer.msg("发送验证邮件成功！", 2, 1, function(){ location.reload();});
            }else{
                layer.msg("发送验证邮件失败！", 2, 5);
            }
        }
    });
}
</script>
