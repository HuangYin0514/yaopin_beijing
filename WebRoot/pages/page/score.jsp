<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php defined('BASEPATH') || exit('Access denied'); ?>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
<meta charset="UTF-8" />
<meta name="renderer" content="webkit" />
<title><?php echo $title; ?> - <?php echo $siteName; ?></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="Cache-Control" content="no-siteapp"/>
<link rel="shortcut icon" type="image/ico" href="/favicon.ico" />
<link rel="stylesheet" href="/css/reset.css"/>
<link rel="stylesheet" href="/css/score.css"/>
</head>
<body>
<?php $this->load->view('common/header')?>

<?php if($derail == 'on'):?>
<div class="area-full bg-score" style="position:static;">
    <div class="container" style="position:static;">
        <img src="<?php echo STATICURL;?>images/score_banner_on.png" style="height:auto;" />
        <?php if(isset($score_list)): ?>
        <div class="score-list">
            <ul>
            <?php foreach ($score_list as $item):?>
                <li class="score-solo f-left" style="margin-left:0.8em;">
                <div class="score-thumb f-left">
                    <img src="<?=$item['thumb']?>" alt="<?=$item['title']?>">
                </div>
                <div class="score-desc f-left">
                    <dl>
						<dt class="title">
							<a href="<?=base_url("goods_{$item['id']}.html")?>" target="_blank"><?=$item['title'] ?></a>
						</dt>
						<dd class="description"><?=$item['seo_description']?></dd>
						<dd class="price" style="position:static;">
							<?php if($item['price'] > 0 ): ?>
							<span class="p-left">现金: <?=$item['price']?> 元</span> 
							<?php endif; ?> <?php if($item['integral'] > 0 ): ?>
							<span class="p-right">积分: <?=$item['integral']?></span>
							<?php endif; ?>
							<br class="clearfix">
						</dd>
						<dd class="button"> 
							<a class="btn text-center addCart" href="javascript:;" data-url="<?=base_url('/cart/manage/add')?>" data-redirect="<?=base_url('/cart/index')?>" data-product-id="<?=$item['id']?>">
							立即兑换
							</a>
						</dd>
                    </dl>
                </div>
                
                </li>
            <?php endforeach; ?>
            </ul>
        </div>
        <?php else: ?>
        <div class="well">
           <?=("&#31245;&#31561;&#65292;&#24037;&#20316;&#20154;&#21592;&#27491;&#22312;&#19978;&#36135;&#33;&#32;&#32;&#32;&#32;&#32;&#45;&#95;&#45;&#124;&#124;")?>
        </div>
        <?php endif; ?>
    </div>
</div>
<?php else:?>
<div class="area-full bg-score">
	<div class="container">
		<img src="<?php echo STATICURL;?>images/score_banner_off.png" />
	</div>
</div>
<?php endif;?>
<?php $this->load->view('common/footer')?>
<script src="<?php echo STATICURL;?>js/jquery.scrollLoading-min.js"></script>
<script src="<?php echo STATICURL;?>js/score.js"></script>
</body>
</html>