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
<link rel="stylesheet" href="/css/page.css"/>
</head>
<body>
<?php $this->load->view('common/header')?>
<div class="area">
	<div class="statcontainor">
	 	<div class="stat">
			<table>	
				<tr><td colspan="2" align="center" class="title">示范县销售额排行 TOP 10</td></tr>
				<tr><th>示范县</th><th>排名</th></tr>
				<tr><td><a href="/special/86" target="_blank">正蓝旗（内蒙古）</a></td><td>1</td></tr>
				<tr><td>新安（河南）</td><td>2</td></tr>
				<tr><td>新安（河南）</td><td>3</td></tr>
				<tr><td>庆安（黑龙江）</td><td>4</td></tr>
				<tr><td>潜江（湖北）</td><td>5</td></tr>
				<tr><td>睢宁（江苏）</td><td>6</td></tr>
				<tr><td>宁都（江西）</td><td>7</td></tr>
				<tr><td>安岳（四川）</td><td>8</td></tr>
				<tr><td>盐池（宁夏）</td><td>9</td></tr>
				<tr><td>共和（青海）</td><td>10</td></tr>
			</table>
		</div>
		<div class="stat">
			<table>	
				<tr><td colspan="2" align="center" class="title">产品类型销售额排行 TOP 10</td></tr>
				<tr><th>产品分类</th><th>排名</th></tr>
				<tr><td>休闲小食</td><td>1</td></tr>
				<tr><td>火锅食品</td><td>2</td></tr>
				<tr><td>海鲜干货</td><td>3</td></tr>
				<tr><td>冰鲜水产</td><td>4</td></tr>
				<tr><td>坚果果干</td><td>5</td></tr>
				<tr><td>膨化食品</td><td>6</td></tr>
				<tr><td>杂粮米面</td><td>7</td></tr>
				<tr><td>厨房用具</td><td>8</td></tr>
				<tr><td>养生食品</td><td>9</td></tr>
				<tr><td>面包糕点</td><td>10</td></tr>
			</table>
		</div>
		<div class="stat">
			<table>	
				<tr><td colspan="2" align="center" class="title">商品销售额排行 TOP 10</td></tr>
				<tr><th>商品名称</th><th>排名</th></tr>
				<tr><td>越南白心火龙果</td><td>1</td></tr>
				<tr><td>原味农场草鸡蛋</td><td>2</td></tr>
				<tr><td>鲜蘑菇</td><td>3</td></tr>
				<tr><td>金龙鱼芝麻油</td><td>4</td></tr>
				<tr><td>生态苏酒地锦</td><td>5</td></tr>
				<tr><td>盘锦大米</td><td>6</td></tr>
				<tr><td>若羌红枣</td><td>7</td></tr>
				<tr><td>蟠龙湖大闸蟹</td><td>8</td></tr>
				<tr><td>老才臣姜葱料酒</td><td>9</td></tr>
				<tr><td>太太乐蘑菇精</td><td>10</td></tr>
			</table>
		</div>
	</div>
</div>
<?php $this->load->view('common/footer')?>
</body>
</html>