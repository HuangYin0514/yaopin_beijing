<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php
defined('BASEPATH') || exit('Access denied');
?>
<iframe src="/pages/common/header.html" frameborder=0></iframe>

<div class="container">
    <br/>
    <p class="lead">
        <a href="/statistics/"><strong><span class="glyphicon glyphicon-stats" aria-hidden="true"></span> 统计中心</strong>     </a>   
    </p>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="container">
                <?php  echo $statisticsHtml;//字段基本信息?>
                                </div>
        </div>
    </div>
</div>
<iframe src="/pages/common/foot.html" frameborder=0></iframe>
