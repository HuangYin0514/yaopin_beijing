<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php
/**
 * 商品列表
 * @author LiuPF<mail@phpha.com>
 * @date 2014-9-25
 */
defined('BASEPATH') || exit('Access denied');

function markRed( $str, $word ){
	return str_replace($word,'<font color="red" style="font-weight:bold;">'.$word.'</font>',$str);
}
?>
<!DOCTYPE html>
<html>
<head lang="zh">
<meta charset="UTF-8" />
<meta name="renderer" content="webkit" />
<title><?=$keyword?> - 搜索 - <?=$siteName?></title>
<link rel="stylesheet" href="<?=STATICURL?>css/reset.css"/>
<link rel="stylesheet" href="<?=STATICURL?>css/search.css"/>
</head>
<body>
<iframe src="/pages/common/header.html" frameborder=0></iframe>
<div class="search mt10 area">
	<div class="left">
		<div class="box">
			<div class="column"><span>所有分类</span><?=$total_num?></div>
			<ul>
			<?php if(!empty($categories)):foreach($categories as $v):?>
				<li><span><a href="<?=base_url("search/index?s={$s}&cid={$v['category_id']}&sort={$sorttype['sort']}&type={$sorttype['type']}")?>"><?=$v['name']?></a></span><?=$v['category_num']?></li>
			<?php endforeach;endif;?>
			</ul>
		</div>
		<div class="hot">
			<div class="column"><span>本周热卖</span></div>
			<ul>
			<?php if(!empty($ranking)):foreach($ranking as $v):?>
				<li>
					<a href="<?=base_url("goods_{$v['id']}.html")?>" target="_blank">
					<img src="<?=$v['thumb']?>" title="<?=$v['seo_title']?>" width="168" height="168">
					<h2><?=$v['title']?></h2></a>
					<p><em>￥<?=$v['price']?></em>（<?=$v['spec']?>）</p>
				</li>
			<?php endforeach;endif;?>
			</ul>
		</div>
	</div>
	<div class="sbox">
		<div class="top">
			<div class="t">全部搜索结果 "<span><?=$keyword?></span>"</div>
			<dl class="clear">
				<dt>商品分类：</dt>
				<dd>
				<?php if(!empty($categories)):foreach($categories as $v):?>
					<a href="<?=base_url("search/index?s={$s}&cid={$v['category_id']}&sort={$sorttype['sort']}&type={$sorttype['type']}")?>"><?=$v['name']?>&nbsp;(<?=$v['category_num']?>)</a>
				<?php endforeach;endif;?>
				</dd>
			</dl>
		</div>
		<div class="bottom">
			<div class="sort mt10 clearfix">
				<div class="tp tp1">排序：</div>
				<div class="tp tp2">
					<?php if($sorttype['sort']=='id'&&$sorttype['type']=='asc'):?>
						<a href="<?=base_url("search/index?s={$s}&sort=id&type=desc&page={$page}")?>">默认<em class="org_up"></em></a>
					<?php elseif($sorttype['sort']=='id'&&$sorttype['type']=='desc'):?>
						<a href="<?=base_url("search/index?s={$s}&sort=id&type=asc&page={$page}")?>">默认<em class="org_down"></em></a>
					<?php else:?>
						<a href="<?=base_url("search/index?s={$s}&sort=id&type=desc&page={$page}")?>">默认<em class="gray_2"></em></a>
					<?php endif;?>
				</div>
				<div class="tp tp3">
					<?php if($sorttype['sort']=='sold'&&$sorttype['type']=='asc'):?>
						<a href="<?=base_url("search/index?s={$s}&sort=sold&type=desc&page={$page}")?>">销量<em class="org_up"></em></a>
					<?php elseif($sorttype['sort']=='sold'&&$sorttype['type']=='desc'):?>
						<a href="<?=base_url("search/index?s={$s}&sort=sold&type=asc&page={$page}")?>">销量<em class="org_down"></em></a>
					<?php else:?>
						<a href="<?=base_url("search/index?s={$s}&sort=sold&type=desc&page={$page}")?>">销量<em class="gray_2"></em></a>
					<?php endif;?>
				</div>
				<div class="tp tp4">
					<?php if($sorttype['sort']=='comment'&&$sorttype['type']=='asc'):?>
						<a href="<?=base_url("search/index?s={$s}&sort=comment&type=desc&page={$page}")?>">评论<em class="org_up"></em></a>
					<?php elseif($sorttype['sort']=='comment'&&$sorttype['type']=='desc'):?>
						<a href="<?=base_url("search/index?s={$s}&sort=comment&type=asc&page={$page}")?>">评论<em class="org_down"></em></a>
					<?php else:?>
						<a href="<?=base_url("search/index?s={$s}&sort=comment&type=desc&page={$page}")?>">评论<em class="gray_2"></em></a>
					<?php endif;?>
				</div>
				<div class="tp tp4">
					<?php if($sorttype['sort']=='price'&&$sorttype['type']=='asc'):?>
						<a href="<?=base_url("search/index?s={$s}&sort=price&type=desc&page={$page}")?>">价格<em class="org_up"></em></a>
					<?php elseif($sorttype['sort']=='price'&&$sorttype['type']=='desc'):?>
						<a href="<?=base_url("search/index?s={$s}&sort=price&type=asc&page={$page}")?>">价格<em class="org_down"></em></a>
					<?php else:?>
						<a href="<?=base_url("search/index?s={$s}&sort=price&type=asc&page={$page}")?>">价格<em class="gray_2"></em></a>
					<?php endif;?>
				</div>
			</div>
			<div class="fb mt10">
				<ul class="merlist clearfix">
				<?php if(!empty($data)):foreach($data as $v):?>
					<li>
						<a href="<?=base_url("goods_{$v['id']}.html")?>" title="<?=$v['title'];?>">
							<img class="scrollLoading" data-url="<?=$v['thumb']?>" src="/static/images/1px.gif" title="<?=$v['seo_title'];?>" width="238" height="238" />
							<h2 style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;color:#555;font-size:14px;text-align:left;font-family:'microsoft yahei';"><?=markRed($v['title'],$s)?></h2>
						</a>
						<p class="txt" style="padding:0 5px;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;"><?php echo $v['seo_title'] ? markRed($v['seo_title'],$s) : '&nbsp;&nbsp;'; ?></p>
						<p class="prices">

						<?php
							if(isset($v['activity']['promotions_price'])){
								echo "<del>￥{$v['activity']['price']}</del>
									  <em>￥{$v['activity']['promotions_price']}</em>";
							}else{
								echo "<em>￥{$v['price']}</em>";
							}
						?>


						&nbsp;&nbsp;（<?=$v['spec']?>）</p>
						<div class="buyBox">
							<input type="text" class="count" value="1"/>
							<div class="countBox">
								<em class="add"></em>
								<em class="subtract"></em>
							</div>
							<?php if( $v['stock']==0 ){ ?>
							<input type="button" class="down" value="当前地区已售罄" />
							<?php } else { ?>
							<input type="submit" class="sub" value="加入购物车" product_id="<?php echo $v['id']; ?>" />
							<?php } ?>
						</div>
					</li>
				<?php endforeach;endif;?>
				</ul>
			</div>
		</div>
		<div class="mypage mt20"><?=$pager?></div>
	</div>
</div>
<iframe src="/pages/common/foot.html" frameborder=0></iframe>

<script src="<%=request.getContextPath() %><?=STATICURL?>js/jquery.scrollLoading-min.js"></script>

</body>
</html>