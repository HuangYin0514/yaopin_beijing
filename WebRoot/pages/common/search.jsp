<%@ page language="java" contentType="text/html; charset=utf-8" %>  
    <div class="panel panel-default">
    <div class="panel-body">
        <div class="container">
            <form class="form-search" action="/entity_search/" method="get" class="form-horizontal"
                  enctype="multipart/form-data">
                <input type="hidden" id ="type" name ="type" value ="<?=$type?>">
                <ul class="nav nav-pills key_search">
                    <?php if($list):foreach($list as $k => $v):?>                       
                    <li <?php if($type==$v['table_value']){echo 'class="disabled"';}?> key='<?php if (isset($keywords)) echo $keywords;?>' key-value='<?=$v['table_value']?>' key-onto='<?=$onto?>' key-id='<?=$v['table_id']?>'>
						<a href=/entity_search?onto=<?=$onto?>&type=<?=$v['table_value']?><?php if (isset($action)) echo "&action=".$action;?><?php if (isset($keywords)) echo "&keywords=".$keywords;?>><?=$v['table_name']?></a>
					</li>
                         <?php endforeach?>
                <?php endif?>
                                  
                </ul>
<script src="/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">

//获取文章数量
function getCount(keywords,table,onto,id,that){ 
    //alert(onto);
    $.ajax({
        url: "<?=base_url('entity_search/getCounts')?>",
        type: "get",
        dataType: "json",
        data: {"keywords":keywords, "table":table, "onto":onto, "id":id},
        success: function(data){
            if(data.err_no == 0){
              //alert(data.results.count);
			  var html = that.find('a').html();
			  that.find('a').html(html+'['+data.results.count+']')
               /* $(".page_number").removeClass("cur");
                $("#comment_page_"+page).addClass("cur");
                var comment = "";
                $.each(data.results, function(k, v){
                    comment += '<dl class="clearfix"><dt><img src="'+v.header+'" width="65" height="65" /></dt><dd><p class="username"><span>'+v.username+'</span></p><p class="usercomlist">'+v.content+'</p><p class="userctime">'+v.time+'</p></dd></dl>';
                });
                $("#comments_list").html(comment);*/
            }
        }
    });
}

	
	$('.key_search li').each(function(){
		var key_word=$(this).attr('key');
		var key_value=$(this).attr('key-value');
		var key_onto=$(this).attr('key-onto');
        var key_id=$(this).attr('key-id');
		getCount(key_word,key_value,key_onto,key_id,$(this));
	})

</script>
                <div class="input-group">
                    <input type="hidden" id ="onto" name ="onto" value ="<?=$onto?>">
                    <input type="text" id ="keywords" name ="keywords" class="form-control input-lg" placeholder="搜索......"  value ="<?php if (isset($keywords)) echo $keywords; ?>">
                    <span class="input-group-btn">
                        <button name ="submit" type="submit" class="btn btn-primary  btn-lg"><span class="glyphicon glyphicon-search"></span></button>
                    </span> 
                </div>    
                <ul class="nav nav-pills">       
                    <li ><a href = "/article/add?onto=<?=$onto?>&type=<?=$type?>"> <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加</a></li>
                    <li <?php  if (isset($action)&&$action == "推荐") echo 'class="disabled"';?>><a href = "/entity_search?onto=<?=$onto?>&type=<?=$type?>&action=推荐" > <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span> 推荐</a></li>
                    <li <?php  if (isset($action)&&$action == "导航") echo 'class="disabled"';?>><a href = "/entity_search?onto=<?=$onto?>&type=<?=$type?>&action=导航"> <span class="glyphicon glyphicon-list" aria-hidden="true"></span> 导航</a></li>                          
                </ul>
            </form>            
        </div>
    </div>
</div>