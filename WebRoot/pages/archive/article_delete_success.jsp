<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php $this->load->view('common/header')?>
<div class="container">

<?php $this->load->view('common/search')?>

    <div class="alert alert-info">
        <button type="button" class="close" data-dismiss="alert">&times;</button>      
        <p>已删除如下的“<?php if (isset($table['table_name'])) echo $table['table_name']; ?>”知识条目：</p>                 
        <br/>
        <div class="panel">
            <div class="panel-heading">
                <?php if (isset($table['table_name'])) echo $table['table_name']; ?>        
            </div>
              <?php  echo $synthesis_basics;//字段基本信息?> </div>

        <br/>
    </div>

</div>



<?php $this->load->view('common/foot')?>