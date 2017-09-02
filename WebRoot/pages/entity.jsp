<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php
defined('BASEPATH') || exit('Access denied');
?>
<iframe src="/pages/common/header.html" frameborder=0></iframe>
<div class="container">
<iframe src="/pages/common/search.html" frameborder=0></iframe>
<div class="panel panel-default">

    <div class="panel-body">
        <div class="container">
            <h1><font face='微软雅黑' ><?php if (isset($keywords)) echo $keywords; ?></font>            <div class = "btn-group">
                <a class="btn btn-default" href="/editor?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords; ?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>">
                                <span class="glyphicon glyphicon-pencil"></span> &nbsp;编辑</a>
                <button type = "button" class = "btn btn-default dropdown-toggle" data-toggle = "dropdown" aria-haspopup = "true" aria-expanded = "false">
                    <span class = "caret"></span>
                    <span class = "sr-only">Toggle Dropdown</span>
                </button>
                <ul class = "dropdown-menu">
                    <li><a href="/synthesis?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords; ?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>"><span class="glyphicon glyphicon-search"></span> &nbsp;聚合阅读</a></li>
                    <li>
                        <a href="/delete?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords; ?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>"><span class="glyphicon glyphicon-trash"></span> &nbsp;删除</a>
                    </li>
                    
                </ul>
            </div>
            </h1><p><font color="gray"><?php  if (isset($dataDetail['出版']) && $dataDetail['出版'] != '') echo $dataDetail['出版']; ?></font></p>            <hr>
           


                    <div class="panel panel-default">

                        <div class="panel-body">
                <?php  echo $synthesis_row_list;//字段列表?>

                        </div>
                    </div>


                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong class="lead"><?php if (isset($item)) echo $item; ?>  </strong>
                        </div> 
                        <div class="panel-body">
                           <?php  if (isset($dataDetail[$item]) && $dataDetail[$item] != '') echo $dataDetail[$item]; ?>
                        </div>
                    </div>    
               
        </div>
    </div>
</div>
</div>
<iframe src="/pages/common/foot.html" frameborder=0></iframe>
