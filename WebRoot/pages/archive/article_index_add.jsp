<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php $this->load->view('common/header')?>
 <div class="container">     
    <h1><font face="微软雅黑"> <!--color="#39b3d7"--> <strong>知识添加</strong></font></h1>   
<div class="panel panel-default">
    <div class="panel-body">
        <div class="container">
            <br/>
            <legend class="text-muted">请选择您要添加的知识的类型：</legend>
            <ul class="nav nav-pills">                       
               <?php $table=array();if($list):foreach($list as $k => $v):?>

                <li <?php if($v['table_value']==$type){echo 'class="disabled"';$table=$v;}?>><a class="lead" href="/article/add?onto=<?=$onto?>&type=<?=$v['table_value']?>" ><?=$v['table_name']?></a></li>
<?php endforeach?>
                <?php endif?>                     
            </ul>
        </div>
    </div>
</div>  

<div class="well"><div class="container"><br/><legend class="text-muted">知识类型介绍：</legend>
<?php if($list):foreach($list as $k => $v): $kk=$k+1;?>
<?php if($kk%3==1):?>
<div class="row">
<?php endif?>
<div class="col-md-4"><div class="container"><br/><p><a class="lead" href="/entity_search?onto=<?=$onto?>&type=<?=$v['table_value']?>" role="button"><?=$v['table_name']?></a></p><p> <font color="gray"><?=$v['table_comment']?></font></p><br></div></div>
<?php if($kk%3==0):?>
</div>
<?php endif?>
<?php endforeach?>
<?php endif?>
</div></div></div>  
<?php $this->load->view('common/foot')?>