<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="../include/head.jsp" %>
</head>
<body style="background:#F7F7F7;">
    
    <div class="">
        <a class="hiddenanchor" id="toregister"></a>
        <a class="hiddenanchor" id="tologin"></a>

        <div id="wrapper">
		    <div id="login" class="animate form">
			    <section class="login_content">
			        <form class="form-horizontal" name="frmLogin" id="frmLogin" role="form" method="post" action="/mgmt/loginProc.do">
						<input type="hidden" name="redirect" value="${redirectUrl}"/>
			            <h1>Log In</h1>
			            <div class="item form-group">
			                <input type="email" class="form-control" id="EMAIL" name="EMAIL" value="" placeholder="Email" required="required">
			            </div>
			            <div class="item form-group">
			                <input type="password" class="form-control" id="PASSWD" name="PASSWD" placeholder="Password" required="required">
			            </div>
			            <div>
			                <button type="submit" class="btn btn-primary" >Submit</button>
			                <!--<a class="reset_pass" href="#toregister">Lost your password?</a>-->
			            </div>
			            <div class="clearfix"></div>
			            <div class="separator">
			
			                <div class="clearfix"></div>
			                <br />
			                <div>
			                    <h1><i class="fa fa-cloud" style="font-size: 26px;"></i> CMS!</h1>
			
			                    <p>COPYRIGHT &copy; 2020 SM 그룹 <br/>ALLRIGHT RESERVED. </p>
			                </div>
			            </div>
			        </form>
			        <!-- form -->
			    </section>
			    <!-- content -->
			</div>
        </div>
    </div>
    <%@ include file="../include/script.jsp" %>
<script>
;(function($){
	$("[name=PASSWD]").keypress(function (e) {
	  if (e.which == 13) {
		  $('#frmLogin').submit();
	    return false;    //<---- Add this line
	  }
	});
})(jQuery);
$('#frmLogin').submit(function(){
	var frm = 'frmLogin';
	if(checkValidation(frm)){
		var formData = $("#"+frm).serialize();
		$.ajax({
			type : "POST",
			url : $("#"+frm).attr("action"),
			cache : false,
			data : formData,
			success : function(data, status){
				if(data.result=='iderror'){
					alert("등록되지 않은 아이디입니다. 관리자에게 문의하시기 바랍니다.");
					return false;
				}else if(data.result=='pwerror'){
					alert("비밀번호가 틀렸습니다.");
					return false;
				}else if(data.result=='statuserror'){
					alert("아이디 잠금상태입니다. 관리자에게 문의바랍니다.");
					return false;
					
				}else if(data.result=='loginok'){
					window.location.href=$('[name=redirect]').val();
				}else{
					alert("관리자에게 문의하시기 바랍니다.");
				}
			},
			error : function(data,status){
				alert( "관리자에게 문의하시기 바랍니다." );
			}
		});
	}
	return false;
});
</script>
</body>
</html>