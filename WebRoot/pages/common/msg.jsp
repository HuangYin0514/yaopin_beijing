<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<div class="layout_rightmain">
    <div class="inner">
        <div class="col-md-12 main-body" style="margin-top: 20px;">
            <div class="alert alert-<?php echo isset($err_no) && $err_no==0 ? 'success' : 'danger'; ?>"><?php echo isset($err_msg) ? $err_msg : ''; ?></div>
        </div>
    </div>
</div>

