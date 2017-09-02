<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<div class="hsh-bottom">
	
	<div class="content">
		<div class="bottom-img" style="background:none;">
			<img style="width:100%;" src="/images/bottom-bg.png"/>
		</div>
		<div class="bottom-qrcode">
			<img src="<?=WEB_DOMAIN .'images/bottom-qrcode.png'?>" alt="" />
		</div>	
		<a href="javascript:;" class="bottom-close" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='<?=WEB_DOMAIN?>/static/images/bottom-close.png',sizingMethod='scale');" id="bottom-btn-close">Close</a>
	</div>
</div>	
<script>
	$(function(){
		
		$("#bottom-btn-close").on('click',function(){
			
			$(".hsh-bottom").animate({bottom:"-100%"}, 3000, function(){
				
			});
		});
	});
</script>

	