<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php
/**
 * 跳转页面
 * @author LiuPF<mail@phpha.com>
 * @date 2014-9-21
 */
defined('BASEPATH') || exit('Access denied');
?>

<?php $this->load->view('common/login_header')?>
<meta http-equiv="refresh" content="3;url=<?=$url?>">
<div class="container">


    <div class="panel panel-default" >
        <a href="index.php">
            <img width ="100%" src ="<?=WEB_DOMAIN?>static/img/banner.jpg"></img>
        </a>  
        <div class="panel-body">
            <div class="container" align="center">
            <p>提示：<?=$message?></p>
                <br><p class = "lead">（系统将在 3 秒后自动跳转）<br /><a href="<?=$url?>">【立即跳转】</a>&nbsp;&nbsp;<a href="/">【返回首页】</a></p>               
            </div>        
        </div>
    </div>
</div>
<?php $this->load->view('common/foot')?>
</body>
</html>