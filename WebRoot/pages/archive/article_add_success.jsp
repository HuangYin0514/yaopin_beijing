<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php $this->load->view('common/header')?>

 <div class="container">     
    <h1><font face="微软雅黑"> <!--color="#39b3d7"--> <strong>知识添加</strong></font></h1>   
<div class="panel panel-default">
    <div class="panel-body">
        <div class="container">
            <br/>
            <legend class="text-muted">请选择您要添加的知识的类型：</legend>
            <ul class="nav nav-pills">   <?php $table=array();if($list):foreach($list as $k => $v):?>

                <li <?php if($v['table_value']==$type){echo 'class="disabled"';$table=$v;}?>><a class="lead" href="/article/add?onto=<?=$onto?>&type=<?=$v['table_value']?>" ><?=$v['table_name']?></a></li>
<?php endforeach?>
                <?php endif?>
        </div>
    </div>
</div>
<?php if($table):?>
 <div class="alert alert-info">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <p><?=$table['table_name']?>录入成功!</p>
        <br>
        <div class="panel">
            <div class="panel-heading">
                您刚录入的<?=$table['table_name']?>信息如下：
                <a class="pull-right" href="/editor?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords;?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>">
<span class="glyphicon glyphicon-pencil"></span> &nbsp;继续编辑</a>
</div>
            <table class="table"><tbody>
             <?php if($postData):foreach($postData as $k => $v):?>
            <tr><td width="20%"><?=$k?></td><td><?=$v?></td></tr>
<?php endforeach?>
                <?php endif?>
            </tbody></table>        </div>
    </div>
    <?php endif?>
        </div>  

<?php $this->load->view('common/foot')?>