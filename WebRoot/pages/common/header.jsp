<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<!DOCTYPE HTML>
<!-- saved from url=(0045)http://v3.bootcss.com/examples/justified-nav/ -->
<HTML lang="zh-CN"><HEAD><META content="IE=11.0000" 
                                                           http-equiv="X-UA-Compatible">

        <META charset="utf-8">     
        <META http-equiv="X-UA-Compatible" content="IE=edge">     
        <META name="viewport" content="width=device-width, initial-scale=1">     <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ --> 
        <META name="description" content="">     
        <META name="author" content="">
        <link rel="shortcut icon" href="<?=WEB_DOMAIN?>static/ico/favicon.png">
       <?php 
        if(!$userinfo):?>
        <title>您好，访客!</title>
        <?php else:?>
        <title>您好，<?php echo $userinfo['real_name'] ;?>!</title>
        <?php endif;?>

<!-- Bootstrap core CSS -->
<link href="/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/jumbotron/jumbotron.css" rel="stylesheet">

<link href="/css/docs.css" rel="stylesheet">
<link href="/css/github.css" rel="stylesheet">
<link href="/css/carousel.css" rel="stylesheet">
<link rel="stylesheet" href="/css/font-awesome.min.css">
<SCRIPT src="/ie_support/ie10-viewport-bug-workaround.js"></SCRIPT>
<script src="/js/jquery.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/holder.js"></script>
<script src="/js/highlight.js"></script><script >hljs.initHighlightingOnLoad();</script>
<script src="/js/application.js"></script>
<script src="/js/jquery-1.9.1.min.js"></script>
<script src="/layer/1.8.5/layer.min.js"></script>
<script src="/js/common.js"></script>

        <style type="text/css">


            body {
                padding-top: 0px;
                padding-bottom: 40px;
            }
            .sidebar-nav {
                padding: 9px 0;
            }

            @media (max-width: 980px) {
                /* Enable use of floated navbar text */
                .navbar-text.pull-right {
                    float: none;
                    padding-left: 5px;
                    padding-right: 5px;
                }
            }

        </style>

        <SCRIPT src="/ie_support/ie-emulation-modes-warning.js"></SCRIPT>

        <META name="GENERATOR" content="MSHTML 11.00.9600.18098">
    </head>

    <body style="font-family:微软雅黑;background-color: #f5f5f5;" >
        <br/>
        <div class="container">
            <div class="navbar navbar-inverse ">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<?php echo WEB_DOMAIN; ?>"><?php echo $myonto?(isset($titleName)?$titleName:""):SYS_NAME;?> </a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <?php
                        $this -> db ->select('*');
                        $this -> db ->from('sys');
                        $res = $this->db->get()->result_array();
                        ?>
                        <?php
                        if (isset($onto) && !empty($onto)) {
                            echo '<li><a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>';
                            echo '<li><a href="/article/add?onto=' . $onto . '">知识添加</a></li>';
                        }

                        foreach ($this->menu as $key => $value) {
                            if (is_array($value)) {
                                echo '<li class="dropdown">';
                                echo '<a href="#" class="dropdown-toggle" data-toggle="dropdown">' . $key . '<b class="caret"></b></a>';

                                echo '<ul class="dropdown-menu">';

                                foreach ($value as $sub_key => $sub_value) {
                                    if($sub_key=='统计中心'){
                                    echo '<li><a href="' . $sub_value . '"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span>' . $sub_key . '</a></li>';
                                }
                                else if($key=='知识库')
                                {
                                    foreach ($res as $key => $value) {
                                      echo '<li><a href="/article/lists?onto=' . $value['系统链接'] . '">' . $value['系统名称'] . '</a></li>';  
                                    }
                                   
                                
                                }
                                  
                                }
                                echo '</ul>';
                                echo '</li>';
                            } else {
                                echo '<li><a href="' . $value . '">' . $key . '</a></li>';
                            }
                        }
                        ?>
                        
                    </ul>

                    <?php
                    $sql=mysql_fetch_assoc(mysql_query("select * from users where id=".$userinfo['id']));
                    $score=$sql['score'];
                    if ($userinfo) {
                         $real_name = isset($userinfo['real_name'])?$userinfo['real_name']:$userinfo['account'];
                        ?>    
                        <ul class="nav navbar-nav navbar-right">                        
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                 <?php echo '您好, ' . $real_name?>
                                 <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                <?php if($this->erp_manage):?>
                                    <li><a href="<?php echo ERP_DOMAIN;?>">后台管理</a></li>
                                     <?php endif?>
                                    <li><a><?php echo '积分：'.$score?></a></li>
                                    <li><a href="<?=base_url('member/user/edit')?>">个人档案</a></li>
                                    <li><a href="<?=base_url('member/user/edit_pass')?>">修改密码</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="<?=base_url('member/user/logout')?>">退出系统</a></li>
                                </ul>
                            </li>
                        </ul>
                        <?php
                    } else { ?>
                     <ul class="nav navbar-nav navbar-right">                        
                        <li class="">
                            <a href="<?=base_url('login_mobile')?>">登录 | 注册</a>
                        </li>
                    </ul>
                     <?php
                     } ?>
                </div>
            </div>
        </div>
