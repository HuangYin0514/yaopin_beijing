<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php
defined('BASEPATH') || exit('Access denied');
?>
<iframe src="/pages/common/header.html" frameborder=0></iframe>
<div class="container">
    <br/>
    <p class="lead">
        <a href="<?=$this->menu['工具']['统计中心']?>"><strong><span class="glyphicon glyphicon-stats" aria-hidden="true"></span> 统计中心</strong>     </a>   
    </p>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="container">
                <br/><p class="lead">知识库规模统计</p><hr/><ul>
                <?php foreach ($this->menu['知识库'] as $k => $v) {?>
                <li class="lead"><a href="<?=$this->menu['工具']['统计中心']?>detail<?=$v?>"><?=$k?></a></li>
                <?php }?>
                </ul>            </div>
        </div>
    </div>
</div>
<iframe src="/pages/common/foot.html" frameborder=0></iframe>