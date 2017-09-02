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
                    <h1><font face='微软雅黑' ><?php if (isset($keywords)) echo $keywords; ?></font></h1>
                    <div class="panel panel-default">
                        <div class="panel-heading">基本信息</div>
             <?php  echo $synthesis_basics;//字段基本信息?>
                </div>
                    <p><a class="btn btn-default" href="/synthesis?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords; ?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>"><span class="glyphicon glyphicon-search"></span> &nbsp;查看详细内容</a></p>
                    <br/>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="container">  
                    <form role="form" action="/experts_review/addActions" method="get" class="form-horizontal"
                          enctype="multipart/form-data">
                        <br/>
                        <p class="text-muted lead">发表评论：</p>
                        <input  type="hidden" id="onto" name="onto" value = "<?php if (isset($onto)) echo $onto;?>" >
                        <input  type="hidden" id="type" name="type" value = "<?php if (isset($type)) echo $type; ?>" >
                        <input  type="hidden" id="keywords" name="keywords" value = "<?php if (isset($keywords)) echo $keywords; ?>" >
                        <input  type="hidden" id="id" name="id" value = "<?php if (isset($id)) echo $id;?>" >
                        <textarea class = "form-control" id = "comment" name = "comment" rows = "6"></textarea>
                        <br/>
                        <input class="btn btn-primary" type="submit" name="submit_comment" value="&emsp;提&nbsp;交&emsp;" />  &emsp; 
                        <a href="#" class="btn btn-default">&emsp;取 消&emsp;</a>
                        <hr/> 
                        <br/>
                        <?php

                        ?>
                        <p><span class="text-muted lead">全部评论</span><span class="text-danger"> ( <?php echo $comment_count; ?>
)：</span></p>
                         <?php if($comment_lists):foreach($comment_lists as $k => $v):?>
                         <hr/><p><a class="lead" href="#"><?=$v['real_name']?></a></p><p><?=$v['description']?></p><p class="text-muted"><?=$v['timestamp']?></p>
                         <?php endforeach?>
                            <?php endif?>
                                            </form>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="container">       
                    <br/>
                    <p class="text-muted lead">已有 <span class="text-danger"><?php echo $validate_count; ?></span> 位专家认证：</p>
                     <?php if($validate_lists):foreach($validate_lists as $k => $v):?>
                      <hr/><p><a  class="lead" href="#"><?=$v['real_name']?></a></p><p> <?=$v['job']?></p>
                      <?php endforeach?>
                            <?php endif?>
                                        <br/>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="container">     
                    <br/>
                    <p class="text-muted lead">已有 <span class="text-danger"><?php echo $good_count; ?></span> 位专家点赞：</p>       
                    <?php if($good_lists):foreach($good_lists as $k => $v):?>
                      <hr/><p><a  class="lead" href="#"><?=$v['real_name']?></a></p><p> <?=$v['job']?></p>
                      <?php endforeach?>
                            <?php endif?>
                                        <br/>


                </div>
            </div>
        </div>
</div>  
<iframe src="/pages/common/foot.html" frameborder=0></iframe>