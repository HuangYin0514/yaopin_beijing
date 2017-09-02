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
            <h1><font face='微软雅黑' ><?php if (isset($title)){ echo $title;}else{ echo $keywords;}?></font>            <div class="btn-group">
                <a class="btn btn-default" href="/synthesis?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords; ?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>"><span class="glyphicon glyphicon-search"></span> &nbsp;查看</a>

                <button type = "button" class = "btn btn-default dropdown-toggle" data-toggle = "dropdown" aria-haspopup = "true" aria-expanded = "false">
                    <span class = "caret"></span>
                    <span class = "sr-only">Toggle Dropdown</span>
                </button>
                <ul class = "dropdown-menu">

                    <li>
                        <a href="/article/delete?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords; ?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>"><span class="glyphicon glyphicon-trash"></span> &nbsp;删除</a>
                    </li>
          
                </ul>
            </div>
            </h1><p><font color="gray"><?php  if (isset($dataDetail['出版']) && $dataDetail['出版'] != '') echo $dataDetail['出版']; ?>
                   </font>
                </p>            
                 <hr>
          
                    <div class="panel panel-default">

                        <div class="panel-body">
                 <?php  echo $synthesis_row_list;//字段列表?>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form role="form" action="/article/doEdit" method="post" class="form-horizontal"
                                  enctype="multipart/form-data">
                                      <input class="pull-right btn  btn-primary" type = "submit" name="update" value="更 新" >
                                       <input type = "hidden" id = "id" name = "id" value = "<?php if (isset($id)) echo $id; ?>">
                                      <input type = "hidden" id = "onto" name = "onto" value = "<?php if (isset($onto)) echo $onto; ?>">
                                      <input type = "hidden" id = "keywords" name = "keywords" value = "<?php if (isset($keywords)) echo $keywords; ?>">
                                      <input type = "hidden" id = "type" name = "type" value = "<?php if (isset($type)) echo $type; ?>">
                                      <input type = "hidden" id = "item" name = "item" value = "<?php if (isset($item)) echo $item; ?>">
                                      <label class = "lead" for = "description"><?php if (isset($item)) echo $item; ?></label><textarea  class = "form-control" rows="6" id = "description" name="description"><?php if (isset($item)) echo $dataDetail[$item]; ?></textarea>
                            </form>
                        </div>
                    </div>
                
        </div>
    </div>
</div>
</div>  
</div>
<iframe src="/pages/common/foot.html" frameborder=0></iframe>