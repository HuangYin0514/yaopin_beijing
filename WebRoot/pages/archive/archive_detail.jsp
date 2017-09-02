<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<title><?=$single['title']?>-知识库</title>
<style>
    .panel-default{width: 93%; margin: 0 auto;}
    .list_title{
        font-size:34px;text-align:center;font-weight:bold;line-height:50px;
    }
    .list_cont{width:98%;margin:30px auto;margin-bottom:40px;}
    .input-group .list_search{
        border-radius:5px;line-height:46px;border:1px solid #ccc;width:100%;margin:0;display:block;padding:0 1%;font-size:20px;
    }
    @media (min-width: 992px){
        .col-md-2 {
            width:18%;
            margin-left:2%;
            
        }
        .col-md-1{width:15%;}
    }
    @media (min-width: 768px){
        .lead {
            font-size: 18px;
        }
    }
    .cont_main{border:1px solid #ccc;margin-bottom:10px;}
    .cont_title{color: #2a6496; font-size: 21px;font-weight: 200;line-height: 1.4;}
    .cont_comment{display:none;position:absolute;top:0;left:0;overflow-y:auto;background:rgba(0, 0, 0, 0.6);z-index:10;padding:5px;}
    .acrticle_cont:nth-child(even){background:#f7f8f9;}
</style>
</head>
<body>
<?php $this->load->view('common/header')?>

<div class="container" align="center">
    <h1 class="featurette-heading"><font face="微软雅黑"><strong><?php echo $single['title']; ?></strong></font></h1>
    <br>
    <div class="subtitle">
        发布时间：<?php echo date('Y-m-d', $single['create_time']); ?>
        <?php if( $single['from_author'] && $single['from_url'] ){ ?>
        &nbsp;&nbsp;&nbsp;&nbsp;作者：<?php echo $single['from_author']; ?>
        &nbsp;&nbsp;&nbsp;&nbsp;来源：<?php echo $single['from_url']; ?>
        <?php } ?>
    </div>    
    <br>
    <br>
    <div class="content" align="left">
        <p class="space"><?php echo $single['content']; ?></p>
        <br>
    </div>
</div>
<script type="text/javascript">
$(function(){  
 
});
</script>
<?php $this->load->view('common/foot')?>
</body>
</html>
