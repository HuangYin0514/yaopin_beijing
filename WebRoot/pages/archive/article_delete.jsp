<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php $this->load->view('common/header')?>
<div class="container">
     
<?php $this->load->view('common/search')?>        
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="container">
                <br/>             
                <p align ="center" class="lead">确认删除如下的“<?php if (isset($table['table_name'])) echo $table['table_name']; ?>”知识条目？</p>                 

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <?php if (isset($table['table_name'])) echo $table['table_name']; ?>        
                    </div>
                <?php  echo $synthesis_basics;//字段基本信息?>   </div>
                <br/>
                <p align ="center">
                    <a class="btn btn-danger" href="/article/doDelete?onto=<?php if (isset($onto)) echo $onto; ?>&type=<?php if (isset($type)) echo $type; ?>&keywords=<?php if (isset($keywords)) echo $keywords; ?>&id=<?php if (isset($id)) echo $id; ?>">
                                 &nbsp; 删 除 &nbsp; </a>                    &emsp;        &emsp;
                    <a class="btn btn-primary" href="/editor?onto=<?php if (isset($onto)) echo $onto; ?>&type=<?php if (isset($type)) echo $type; ?>&keywords=<?php if (isset($keywords)) echo $keywords; ?>&id=<?php if (isset($id)) echo $id; ?>">
                                 &nbsp; 取 消 &nbsp; </a>                </p>
                <br/>
            </div>
        </div>
    </div>
</div>



<?php $this->load->view('common/foot')?>