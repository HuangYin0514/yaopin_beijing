<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php $this->load->view('common/header')?>
 
<div class="container">  
    <h1><font face="微软雅黑" color="black"><strong>修改密码</strong></font></h1>      
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="container">
                <br/>
                                <div class="form-horizontal">                    
                   <?php 
        if(!$userinfo):?>
            <p class="lead text-muted">您的用户名为: <strong class="text-primary"></strong>,请输入您原来的密码，再设定新密码：</p>
        <?php else:?>
          <p class="lead text-muted">您的用户名为: <strong class="text-primary"><?php echo $userinfo['account'] ;?></strong>,请输入您原来的密码，再设定新密码：</p>
                    <hr/>
                    <div class = "form-group">
                        <label class = "col-sm-2 control-label" for = "pwd">旧密码: </label>
                        <div class = "col-sm-8">
                            <input class = "form-control" type = "password" id = "old_pass" name = "old_pass">
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

<?php $this->load->view('common/foot')?>
<script src="/js/verify.js"></script>
<script type="text/javascript">
//提交
function doSubmit(){
    var old_pass = $.trim($("#old_pass").val());
    var password = $.trim($("#password").val());
    var password1 = $.trim($("#password1").val());
        if(password != password1){
        layer.msg("两次密码输入不一致", 2, 5);
        $("#password").focus();
        return false;
    }
    layer.load("提交中...");
    $.ajax({
        url: "<?=base_url('member/user/ajax_passwd')?>",
        type: "post",
        dataType: "json",
        data: {"old_pass":old_pass, "password":password},
        success: function(data){
            if(data.err_no == 0){
                layer.msg("修改密码成功！", 2, 1, function(){ location.reload();});
            }else{
                layer.msg("修改密码失败！", 2, 5);
            }
        }
    });
}
</script>

