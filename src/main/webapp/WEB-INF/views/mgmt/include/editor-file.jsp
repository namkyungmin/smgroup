<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <iframe id="frameUpload" name="frameUpload" style="display:none"></iframe>
    <form id="formUpload" action="<?php echo $router->pathFor('file-editor')?>" target="frameUpload" method="post" enctype="multipart/form-data" style="width:0px;height:0;overflow:hidden">
        <input name="image" type="file" onchange="$('#formUpload').submit();this.value='';">
        <?php
            foreach($site_variable['token'] as $key=>$value): 
        ?>
        <input type="hidden" name="<?php echo $key ?>" value="<?php echo $value ?>">
        <?php
            endforeach;
        ?>
    </form>