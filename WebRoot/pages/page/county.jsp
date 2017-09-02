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
<link rel="shortcut icon" href="/favicon.ico" />
<link rel="stylesheet" href="/css/reset.css"/>
<link rel="stylesheet" href="/css/county.css"/>

</head>
<body>
<iframe src="/pages/common/header.html" frameborder=0></iframe>
<div class="area">
	<div class="county">
	<div class="title">县域电商导航</div>
	<?php if($province_initial){
	 	foreach ($province_initial as $key => $item){
		  	echo '<dl>';
			echo '<dt>'.$key.'</dt>';
			$i = 0;
	 		foreach ($item as $province){
	 			if($i == 0){
	 				echo '<dt style="color:#555;">'.$province.'</dt>';
	 			}
	 			else{
	 				echo '<dt class="province">'.$province.'</dt>';
	 			}
	 			echo "<dd><ul>";
	 			foreach ($province_name[$province] as $county){
	 				if(empty($county['site_url'])){
						echo '<li>'.$county['couty_name'].'</li>';
	 				}
	 				else{
	 					echo '<li><a href="'.$county['site_url'].'" target="_blank">'.$county['couty_name'].'</a></li>';
	 				}		 			
		 		} 
		 		echo "</ul></dd>";
		 		$i++;
	 		}
	 		echo '</dl>';
		} 
	} ?>
	</div>
</div>
<iframe src="/pages/common/foot.html" frameborder=0></iframe>
</body>
</html>