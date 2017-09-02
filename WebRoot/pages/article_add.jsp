<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<iframe src="/pages/common/header.html" frameborder=0></iframe>
 <div class="container">     
    <h1><font face="微软雅黑"> <!--color="#39b3d7"--> <strong>知识添加</strong></font></h1>   
<div class="panel panel-default">
    <div class="panel-body">
        <div class="container">
            <br/>
            <legend class="text-muted">请选择您要添加的知识的类型：</legend>
            <ul class="nav nav-pills">                       
                <li ><a class="lead" href="add.php?onto=health&type=health_theory" >中医养生原理</a></li><li ><a class="lead" href="add.php?onto=health&type=health_method" >中医养生方法</a></li><li ><a class="lead" href="add.php?onto=health&type=health_docs" >中医养生文献</a></li><li ><a class="lead" href="add.php?onto=health&type=constitution" >中医体质</a></li><li ><a class="lead" href="add.php?onto=health&type=disease" >疾病</a></li><li class="disabled"><a class="lead" href="add.php?onto=health&type=masters" >名医</a></li>                             
            </ul>
        </div>
    </div>
</div>  

        <div class="panel panel-default">
            <div class="panel-body">
                <div class="container">
                    <form role="form" action="added.php" method="post" class="form-horizontal"
                          enctype="multipart/form-data">
                        <br/>
                        <input  type="hidden" id="onto" name="onto" value = "health" >
                        <input  type="hidden" id="type" name="type" value = "masters" >

                        <legend  class="text-muted">请录入新的“名医”的信息：</legend><div class = "form-group"><label class = "col-sm-2 control-label" for = "姓名">姓名:</label><div class = "col-sm-8"><input class = "form-control" type = "text" id = "姓名" name = "姓名" value = "" placeholder = "请输入姓名"></div></div><div class = "form-group"><label class = "col-sm-2 control-label" for = "描述">描述:</label><div class = "col-sm-8"><textarea class = "form-control" id = "描述" name = "描述" placeholder = "请输入描述" rows = "6"></textarea></div></div>                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <input class="btn btn-primary" type="submit" name="submit" value="&nbsp;&nbsp;提&nbsp;交&nbsp;&nbsp;" />   
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        </div>  

<iframe src="/pages/common/foot.html" frameborder=0></iframe>