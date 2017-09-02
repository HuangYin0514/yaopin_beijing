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

        <div class="panel panel-default">
            <div class="panel-body">
                <div class="container">
                    <form role="form" action="/article/doAdd" method="post" class="form-horizontal"
                          enctype="multipart/form-data">
                        <br/>
                        <input  type="hidden" id="onto" name="onto" value = "<?=$onto?>" >
                        <input  type="hidden" id="type" name="type" value = "<?=$type?>" >
<?php if($table):?>
                        <legend  class="text-muted">请录入新的“<?=$table['table_name']?>”的信息：</legend>
                        <?php foreach($table['table_cols'] as $k => $v):?>
                        <div class = "form-group"><label class = "col-sm-2 control-label" for = "<?=$v?>"><?=$v?>:</label><div class = "col-sm-8"><input class = "form-control" type = "text" id = "<?=$v?>" name = "<?=$v?>" value = "" placeholder = "请输入<?=$v?>"></div></div>
                        <?php endforeach?>
                         <?php endif?>
                            <div class="col-sm-offset-2 col-sm-10">
                                <input class="btn btn-primary" type="submit" name="submit" value="&nbsp;&nbsp;提&nbsp;交&nbsp;&nbsp;" />   
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        </div>  

<?php $this->load->view('common/foot')?>