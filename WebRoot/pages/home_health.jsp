 <%@ page language="java" contentType="text/html; charset=utf-8" %>  
    <div class="panel panel-default" style="width:1142px; margin:-20px 0 0 -218px">
        <a href="index.php">
            <img width ="100%" src ="/images/banner.jpg"></img>
        </a>  
        <div class="panel-body">
            <div class="container" align="center">
                <br><p class = "lead"><strong>系统介绍</strong>
                </p><font color = "gray">中国中医科学院中医药信息研究所长期致力于中医药领域数字资源的建设与利用工作，成功研制了中医药学语言系统、中医临床术语集等大型术语系统，以及结构性文献数据库(方剂数据库,医案数据库)。我们构建了<a href="http://www.tcmkb.cn" role="button">
                <strong>中医药知识服务平台</strong>（<span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span>&nbsp; http://www.tcmkb.cn）</a>，它集成了中医药领域的领域本体、术语资源（包括中医药学语言系统、中医临床术语集、中医古籍语言系统等），以及证候、中药、方剂等领域的知识库，面向中医专家提供知识检索、知识问答、知识浏览等服务。</font></p><hr/>
                <div class="row">
                <?php foreach ($query as $key => $value) { ?>
                    <div class="col-md-4">
                        <div class="container">
                        <br/><p><strong>
                        <a class="lead" href="/article/lists?onto=<?php echo $value['系统链接']?>" role="button"><?php echo $value['系统名称']?></a>
                        </strong>
                        </p><font color="gray"><?php echo $value['系统介绍']?></font><br/><br/>
                        </div>
                    </div>
                <?php }?>                 
                </div>
            </div>                 
        </div>        
    </div>

 
