<%@ page language="java" contentType="text/html; charset=utf-8" %>  
<?php
defined('BASEPATH') || exit('Access denied');
?>
<iframe src="/pages/common/header.html" frameborder=0></iframe>
<div class="container">
<iframe src="/pages/common/search.html" frameborder=0></iframe>
<?php if (isset($synthesis_case_record)) echo $synthesis_case_record;?>
</div>  
<iframe src="/pages/common/foot.html" frameborder=0></iframe>