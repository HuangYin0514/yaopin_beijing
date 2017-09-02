<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<title>内容列表-知识库</title>
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
    .fl {
    float: left;
    display: inline;
    }
    .categorys {
        list-style-type: none;
        margin-top: 20px;
        text-align: center;
    }
    .categorys li {
        border-bottom: 1px solid #e1e5ea;
        width: 160px;
        margin: 10px 10px 0;
        padding-bottom: 10px;
    }
    .categorys a {
        border-radius: 15px;
        box-sizing: border-box;
        color: #3a404b;
        display: inline-block;
        height: 30px;
        line-height: 30px;
        padding: 0 35px;
    }
    .categorys a.active {
        background: #e7ebee none repeat scroll 0 0;
    }
    .categorys a:hover {
        background: #e7ebee none repeat scroll 0 0;
    }

    .search-result{
        padding-top: 20px;
        width: 860px;
    }

    .search-content {
        text-align: left;
    }

    .search-content .search-article {
        padding: 11px 0;
        border-bottom: 1px dotted #666;
    }


    .search-content .search-article .search-article-title {
        font-size: 18px;
        color: #000;
        font-weight: 700;
        line-height: 34px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        max-width: 700px;
    }

    .search-content .search-article .search-article-from {
        font-size: 14px;
        line-height: 28px;
        color: #666;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        max-width: 700px;
    }

    .search-content .search-article .search-article-from .label:not(:first-child){
        margin-left: 15px;
    }

    .search-content .search-article .search-article-from a.value {
        color: #6c6c6c;
    }

    .search-content .search-article .search-article-brief {
        line-height: 24px;
        color: #999;
    }
</style>
</head>
<body>
<?php $this->load->view('common/header')?>

<div class="container" align="center">
     <ul class="fl categorys" align="left">
        <?php if( isset($category['id'])){ ?>
            <?php foreach( $categorys as $k=>$v ){ ?>
                <?php if( $k==$category['id'] ){ ?>
                    <li><a href="?category_id=<?php echo $k; ?>" class="active"><?php echo $v; ?></a></li>
                <?php } else { ?>
                    <li><a href="?category_id=<?php echo $k; ?>"><?php echo $v; ?></a></li>
            <?php } ?>
            <?php } ?>
        <?php } ?>
    </ul>
    <div class="fl search-result" style="margin-left:30px;padding-top:10px;">
        <div class="search-content">
            <?php if(isset($results) && count($results)>0) { ?>
                <?php foreach ($results as $value) { ?>
                <div class="search-article">
                    <a class="search-article-title" href="<?php echo site_url('archive/detail/'.$value['id']); ?>" target="_blank">
                        <?php echo $value['title']; ?>
                    </a>
                    <?php if(!empty($value['from_author'])) { ?>
                    <div class="search-article-from">
                        <span class="label">作者：</span>
                        <span class="value"><?php echo $value['from_author']; ?></span>

                        <?php if(!empty($value['from_url'])) { ?>
                        <span class="label">来源：</span>
                        <a class="value" href="<?php echo $value['from_url']; ?>">查看</a>
                        <?php } ?>
                    </div>
                    <?php } ?>
                    <p class="search-article-brief">
                        <?php echo mb_substr(str_replace(' ', '', strip_tags($value['content'])), 0, 300).'...'; ?>
                    </p>
                </div>
                <?php } ?>
           <?php } else { ?>
                <div class="txtCenter pd20" style="font-size:36px; color:#333; margin:50px 0;">
                    
                </div>
           <?php } ?>
        </div>
    </div>
</div>
<script type="text/javascript">
$(function(){  
 
});
</script>
<?php $this->load->view('common/foot')?>
</body>
</html>
