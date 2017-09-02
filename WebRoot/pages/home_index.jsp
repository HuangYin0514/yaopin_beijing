<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php
defined('BASEPATH') || exit('Access denied');
?>


<iframe src="/pages/common/header.html" frameborder=0></iframe>
<div style="background-color:white;" height="100%">
<div style="background-color: #f5f5f5;">
    <div class="container">
            <div class="panel-body">
                <div class="container">
                    <div class="row featurette">
                        <div class="col-md-offset-2 col-md-8" align="center">
                            <?php 
                                //设置默认的知识库首页，在global.conf.php里设置
                                $this->load->view('home_'.DEFAULT_MAINPAGE);
                            ?>                            
                        </div>
                    </div>                 
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<iframe src="/pages/common/foot.html" frameborder=0></iframe>