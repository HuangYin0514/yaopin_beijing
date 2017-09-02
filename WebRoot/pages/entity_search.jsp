<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<iframe src="/pages/common/header.html" frameborder=0></iframe>
<style>
	.pagination{float:left;}
</style>
 
<div class="container">

<iframe src="/pages/common/search.html" frameborder=0></iframe>
<?php    if (!isset($keywords) || ($keywords == '')) {
      ?>
      <!-- Nav tabs -->      
 <ul class="nav nav-tabs " role="tablist">
     <li role="presentation" <?php if (!isset($action) || ($action == '推荐')) echo 'class="active"';?>>
        <a href="#推荐" role="tab" data-toggle="tab">推荐</a>
    </li>
    <li role="presentation" <?php if (!isset($action) || ($action == '导航')) echo 'class="active"';?>>
        <a href="#导航" role="tab" data-toggle="tab">导航</a>
    </li>
</ul> 
<!-- Tab panes -->
<div  class="tab-content" align="left">
    <div role="tabpanel" class="tab-pane <?php if (!isset($action) || ($action == '推荐')) echo 'active';?>" id="推荐">
        <div class="panel">
            <div class = "panel-body" >
                <div class="container">
  <?php if($recommend_list){echo $recommend_list;}?>
       </div>
            </div>
        </div>
    </div>
    <div role="tabpanel" class="tab-pane <?php if (!isset($action) || ($action == '导航')) echo 'active';?>" id="导航">
        <div class="panel">
            <div class = "panel-body" >
                <div class="container">
                       <?php if($navigation_list){echo $navigation_list;}?>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<?php }else if($total==0){
 render_warning('<p>无"' . $keywords . '"相关知识.</p> ');
 }else{?>
   <div class="panel">       
            <div class = "panel-body" >
                <div class="container">
                    <p><font color="gray">获得 <?php echo $total; ?> 条结果。</font></p>
                    <?php
                    echo $search_list_html;
                    echo getPage($keywords, $page, $num_pages,$onto, $type);
                    ?>
                </div>
            </div>       
        </div>
 <?php }?>
<iframe src="/pages/common/foot.html" frameborder=0></iframe>

