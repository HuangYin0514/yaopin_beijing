<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php $this->load->view('common/header')?>
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
<div class="container">
	<h3 class='list_title' ><?php echo isset($titleName)?$titleName:"";?></h3>
     <form class="form-search" action="/entity_search/" method="get" class="form-horizontal"
enctype="multipart/form-data">
                <input type="hidden" id ="type" name ="type" value ="<?=$type?>">
	<div class="input-group list_cont">
        <input type="hidden" id ="onto" name ="onto" value ="<?=$onto?>">
        <input type="text" style='border-radius:5px 0 0  5px;height:65px;' id ="keywords" name ="keywords" class="form-control input-lg list_search" placeholder="搜索......"  value ="">
        <span class="input-group-btn">
                <button name ="submit" type="submit" class="btn btn-primary  btn-lg" style='height:65px;'><span class="glyphicon glyphicon-search"></span></button>
        </span> 
    </div>  
     </form>    
	<div class="panel panel-default" > 
        <!--<a href="index.php">
            <img width ="100%" src ="<?=WEB_DOMAIN?>static/img/clinic_banner.jpg"></img>
        </a>  -->
		
        <div class="panel-body">
            <div class="container" align="center">
                
                   
					<?php if($list):foreach($list as $k1 => $v1):$kk=$k1+1;?>
							<div class="row acrticle_cont" style='padding-top:20px;margin-left:-30px;margin-right:-30px;'><div class="col-md-1 cont_title">
							
							<p style='font-size:18px;'><?=$k1?></p>
							
						</div>
						<?php if($v1):foreach($v1 as $k => $v):$kk=$k+1;?>
						<div class="col-md-2 cont_main" style='position:relative;padding:10px 0;'>
							<div class="container" style='padding-left:0;padding-right:0;'>
								
								<p style='margin:0;'>
									<a class="lead" href="/entity_search?onto=<?=$onto?>&type=<?=$v['table_value']?>" role="button"><?=$v['table_name']?></a>&nbsp;
									<a href="/article/add?onto=<?=$onto?>&type=<?=$v['table_value']?>" >
										<span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
									</a>
								</p>
								<p class='cont_comment'>
									<font color="gray" style='color:#fff;'><?=$v['table_comment']?></font>
								</p>
								
							</div>
						</div>
					<?php endforeach?>
						<?php endif?></div>
					<?php endforeach?>
					 <?php endif?>
					
            </div>        
        </div>
    </div>
</div>
<?php $this->load->view('common/foot')?>
<script>
	$(function(){
		$('.cont_main').hover(function(){
			var h = $(this).height();
			var w = $(this).width();
			$(this).find('.cont_comment').css({'min-height':h,'width':'100%','top':h + 10});
			$(this).find('.cont_comment').show();
		},function(){
			$(this).find('.cont_comment').hide();
		})
		if($('.container').width() > 750){
			$('.acrticle_cont').each(function(){
				var leftcontH = $(this).outerHeight(true) - 20;
				$(this).find('.cont_title').css({"line-height":leftcontH+'px'});
			})
		}
		
	})
</script>