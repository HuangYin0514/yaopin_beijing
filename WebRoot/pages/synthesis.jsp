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


            <div class="row">
                <div class="col-md-9">
                    <h1><font face='微软雅黑' ><?php if (isset($title)){ echo $title;}else{ echo $keywords;}?></font>
                        <div class="btn-group">
                            <a class="btn btn-default" href="/editor?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords;?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>">
                                <span class="glyphicon glyphicon-pencil"></span> &nbsp;编辑</a>
                            <button type = "button" class = "btn btn-default dropdown-toggle" data-toggle = "dropdown" aria-haspopup = "true" aria-expanded = "false">
                                <span class = "caret"></span>
                                <span class = "sr-only">Toggle Dropdown</span>
                            </button>
                            <ul class = "dropdown-menu">
                                <li><a href="/entity?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords;?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>"><span class="glyphicon glyphicon-search"></span> &nbsp;查看知识点</a></li>
                                 <li><a href="/experts_review?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords;?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>"><span class="glyphicon glyphicon-comment"></span> &nbsp;发表评论</a></li>
                                <li>
                                    <a href="/article/delete?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords;?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>"><span class="glyphicon glyphicon-trash"></span> &nbsp;删除</a>
                                </li>
                                
                            </ul>
                        </div>
                    </h1>
                    <div class="panel panel-default">
                          <div class="panel-heading">基本信息</div><?php  echo $synthesis_basics;//字段基本信息?></div>                        <hr>
                  <?php  if($synthesis_row_list!=="") {echo $synthesis_row_list;}//字段列表?>
                  <?php  echo $synthesis_row_list_detail;//字段详情列表?>
                   </div>
                <div class="col-md-3">
                    <br/>
                    <ul class="nav nav-pills pull-right">
        <li><a href="/experts_review?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords;?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>"> &nbsp;<span class="glyphicon glyphicon-comment"></span>&nbsp; <?php if (isset($comment_count)) echo $comment_count;?> </a></li>
        <li role="presentation" class="dropdown"> 
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
            <span class="glyphicon glyphicon-check"></span>&nbsp;
           <?php if (isset($validate_count)) echo $validate_count;?>
            <!--<span class="caret"></span>-->
        </a>

        <ul class = "dropdown-menu">
            <li>
                  <?php if($is_validate_taken=='yes'):?>
                 <a href="/synthesis/doManage?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords;?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>&action=validate"><span class="glyphicon glyphicon-remove"></span> &nbsp;取消认证&nbsp;</a>

                  <?php else:?>
                <a href="/synthesis/doManage?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords;?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>&action=validate"><span class="glyphicon glyphicon-check"></span> &nbsp;点击认证&nbsp;</a>
                 <?php endif?>

            </li>
            <li><a href="/experts_review?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords;?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id;?>"> &nbsp;<span class="glyphicon glyphicon-user"></span> &nbsp;查看认证专家&nbsp;</a></li>
        </ul>
    </li>
    <li role="presentation" class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
            <span class="glyphicon glyphicon-thumbs-up"></span>&nbsp;
           <?php if (isset($good_count)) echo $good_count;?>
                <!--<span class="caret"></span>-->
        </a>
        <ul class = "dropdown-menu">
            <li>
              <?php if($is_good_taken=='yes'):?>
                <a href="/synthesis/doManage?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords;?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id; ?>&action=good"><span class="glyphicon glyphicon-thumbs-up"></span> &nbsp;取消点赞&nbsp;</a> 
                  <?php else:?>
                <a href="/synthesis/doManage?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords;?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id; ?>&action=good"><span class="glyphicon glyphicon-thumbs-up"></span> &nbsp;点赞&nbsp;</a> 
                  <?php endif?>
                             </li>
            <li><a  href="/experts_review?onto=<?php if (isset($onto)) echo $onto;?>&keywords=<?php if (isset($keywords)) echo $keywords;?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id; ?>">
                    &nbsp;<span class="glyphicon glyphicon-user"></span>&nbsp;查看点赞专家&nbsp;</a></li>
        </ul>
    </li>
</ul>
<br/>    
                    <hr/>

                    <p>专家评论：</p>
                      <?php $count=1;if(isset($comment_lists)):foreach($comment_lists as $k => $v):if($count<4):?>
                         <p class="text-muted"><small><?=$v['description']?><br/><a href="#"> - <?=$v['real_name']?></a></p>
                           <?php endif?>
                         <?php $count++; endforeach?>
                            <?php endif?>
                                        <a href="/experts_review?onto=<?php if (isset($onto)) echo $onto; ?>&keywords=<?php if (isset($keywords)) echo $keywords;?>&type=<?php if (isset($type)) echo $type; ?>&id=<?php if (isset($id)) echo $id; ?>"> 更多评论 <i class="icon-angle-right"></i></a>
                    <ul class="nav nav-pills nav-stacked"></ul>
                    <br/>
                </div>
            </div>

        </div>
    </div>
</div>




</div>  
<iframe src="/pages/common/foot.html" frameborder=0></iframe>
