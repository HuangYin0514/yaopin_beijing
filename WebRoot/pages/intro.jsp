<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php
defined('BASEPATH') || exit('Access denied');
?>
<iframe src="/pages/common/header.html" frameborder=0></iframe>
<div class="jumbotron" align="center">
    <div class="container">       
        <h1><font face="微软雅黑" color="#428bca"  > <!--color="#39b3d7"--> <strong>中医药知识库加工平台</strong></font></h1>   
        <div class="row" >
            <div class="col-sm-offset-2 col-sm-8">              
                <p class="text-muted"><small>本系统是<a href="http://www.tcmkb.cn" role="button"><strong>中医药知识服务平台</strong></a>的一个核心子系统，它支持中医专家构建并管理中医药领域知识库。组织中医专家通过互联网开展知识库协同共建，对知识库的内容进行编辑、更新与审核。  </small></p>       
            </div>            
        </div>  
    </div>   
</div>

<div class="container">
    <div class="row">
        <div class="col-md-4">
            <h2 class="featurette-heading text-primary"><font face="微软雅黑"><strong>知识编辑</strong></font></h2>     
            <p class="lead text-muted">提供知识编辑界面，支持用户对中医临床知识进行编辑和更新。</p>                    
        </div>
        <div class="col-md-8"> 
            <div class="panel panel-default" align="center">
                <div class="panel-body">
                    <a href="/editor?onto=clinic&keywords=消化不良中医诊疗共识意见&type=guide&id=2" target="_blank">
                        <img class="featurette-image img-responsive center-block" src="<?=WEB_DOMAIN?>static/img/editor-xxhxbxlxzxyxzxlxgxsxyxj.jpg" alt="知识编辑">
                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span> <span class="text-muted">知识编辑界面</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<hr class="featurette-divider"/>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <br/>
            <h2 class="featurette-heading text-primary"><font face="微软雅黑" ><strong>知识添加</strong></font></h2>     
            <p class="lead text-muted">用户可向所选的知识库中添加新的知识（包括：医案、临床指南、临床研究、方剂、养生原理、养生方法、中医体质、疾病等）。</p>       
        </div>
        <div class="col-md-8">   
            <div class="panel panel-default" align="center">
                <div class="panel-body">
                    <a href="/article/add?onto=clinic&type=experience" target="_blank">
                        <img class="featurette-image  img-responsive center-block" src="<?=WEB_DOMAIN?>static/img/add-mxyxjxy.jpg" alt="知识添加">        
                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span> <span class="text-muted">知识添加界面</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<hr class="featurette-divider"/>
<div class="container">
    <h2 class="featurette-heading text-primary"><font face="微软雅黑" ><strong>知识删除</strong></font></h2>     
    <p class="lead text-muted">系统支持用户删除知识条目：</p>    
    <div class="panel panel-default" align="center">
        <div class="panel-body">
            <a href="/entity_search?type=constitution&onto=health&keywords=体质&submit=" target="_blank">
                <img class="featurette-image  img-responsive center-block" src="<?=WEB_DOMAIN?>static/img/del-zxyxtxz.jpg" alt="知识删除">        
                <span class="glyphicon glyphicon-search" aria-hidden="true"></span> <span class="text-muted">知识删除界面</span>
            </a>
        </div>
    </div>
</div>
<hr class="featurette-divider"/>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <br/>
            <h2 class="featurette-heading text-primary"><font face="微软雅黑" ><strong>知识检索</strong></font></h2>     
            <p class="lead text-muted">系统提供基本的知识检索服务，帮助用户检索中医药领域知识和相关文档。</p>       
        </div>

        <div class="col-md-8">   
            <div class="panel panel-default" align="center">
                <div class="panel-body">
                    <a href="/entity_search?type=formula&onto=clinic&keywords=人参&submit=" target="_blank">
                        <img class="featurette-image  img-responsive center-block" src="<?=WEB_DOMAIN?>static/img/search-rxc.jpg" alt="知识检索">        
                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span> <span class="text-muted">知识检索界面</span>
                    </a>



                </div>
            </div>
        </div>
    </div>
</div>

<hr class="featurette-divider"/>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <br/> 
            <h2 class="featurette-heading text-primary"><font face="微软雅黑" ><strong>知识展示</strong></font></h2>     
            <p class="lead text-muted">提供中医药领域知识的展示功能。
            </p>
        </div>
        <div class="col-md-8">    
            <div class="panel panel-default" align="center">
                <div class="panel-body">
                    <a href="/synthesis?onto=clinic&keywords=人参&type=formula&id=414" target="_blank">
                        <img class="featurette-image  img-responsive center-block" src="<?=WEB_DOMAIN?>static/img/dxcxsxjxzxt.jpg" alt="知识展示">        
                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span> <span class="text-muted">知识展示界面</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<hr class="featurette-divider"/>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <br/> 
            <h2 class="featurette-heading text-primary"><font face="微软雅黑" ><strong>知识评审</strong></font></h2>     
            <p class="lead text-muted">支持领域专家对中医药领域知识进行审核、认证并发表评论。
            </p>
        </div>
        <div class="col-md-8">    
            <div class="panel panel-default" align="center">
                <div class="panel-body">
                    <a href="/synthesis?onto=clinic&keywords=消化不良中医诊疗共识意见&type=guide&id=2" target="_blank">
                        <img class="featurette-image  img-responsive center-block" src="<?=WEB_DOMAIN?>static/img/review-xxhxbxlxzxyxzxlxgxsxyxj.jpg" alt="知识评审">        
                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span> <span class="text-muted">专家认证、点赞</span>
                    </a>
               
                    <a href="/experts_review?onto=clinic&keywords=消化不良中医诊疗共识意见&type=guide&id=2" target="_blank">
                        <img class="featurette-image  img-responsive center-block" src="<?=WEB_DOMAIN?>static/img/fxbxpxl.jpg" alt="知识评审">        
                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span> <span class="text-muted">专家发表评论</span>
                    </a>
                </div>
            </div>
            
        </div>
    </div>
</div>
<hr class="featurette-divider"/>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <br/> 
            <h2 class="featurette-heading text-primary"><font face="微软雅黑" ><strong>知识地图</strong></font></h2>     
            <p class="lead text-muted">系统通过知识图谱来封装中医药知识，以图形的方式展示概念和知识点之间的关系。</p>
        </div>
        <div class="col-md-8">    
            <div class="panel panel-default" align="center">
                <div class="panel-body">
                    <a href="http://www.tcmkb.cn/knowledge_maps/cytoscape.php?keywords=%E7%B3%96%E5%B0%BF%E7%97%85&graph=health" target="_blank">
                        <img class="featurette-image img-responsive center-block" src="<?=WEB_DOMAIN?>static/img/zxsxtxpxtxnxb.jpg" alt="知识地图">
                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span> <span class="text-muted">知识地图界面</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<hr class="featurette-divider"/> 
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <br/> 
            <h2 class="featurette-heading text-primary"><font face="微软雅黑" ><strong>用户管理</strong></font></h2>     
            <p class="lead text-muted">系统实现了用户个人档案管理、密码修改等功能。</p>
        </div>
        <div class="col-md-8">    
            <div class="panel panel-default" align="center">
                <div class="panel-body">
                    <a href="/member/user/edit" target="_blank">
                        <img class="featurette-image img-responsive center-block" src="<?=WEB_DOMAIN?>static/img/gxrxdxaxzxj.jpg" alt="用户管理">
                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span> <span class="text-muted">用户管理界面</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<hr class="featurette-divider"/> 
<iframe src="/pages/common/foot.html" frameborder=0></iframe>