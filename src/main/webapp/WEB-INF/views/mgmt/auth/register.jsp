<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %><c:set var="req" value="${pageContext.request}" />
<!DOCTYPE html>
<html lang="en">

<head>
    <%@ include file="../include/head.jsp" %>
</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">
			
            <div class="col-md-3 left_col">
                <%@ include file="../include/sidebar.jsp" %>
            </div>
            <!-- top navigation -->
            <div class="top_nav">
                <%@ include file="../include/top.jsp" %>
            </div>
            <!-- /top navigation -->

            <!-- page content -->
            <div class="right_col" role="main">
				<div class="page-wrap page-list"  data-menu="mgmt|admin|write">
					<div class="page-title">
						<div class="title_left">
							<h3><?php echo $_PAGENAME;?> <small></small></h3>
						</div>
						<div class="title_right">
							<div class="col-md-5 col-sm-6 col-xs-12 form-group pull-right top_search">
								<form name="frmSearch" action="/mgmt/admin/list.do">
									<input type="hidden" name="lang" value=""/>
									<input type="hidden" name="searchField" value="all"/>
									<div class="input-group">
										<input type="text" name="searchText" class="form-control" id="txt" value="${keyword}" placeholder="검색어 입력" />
										<span class="input-group-btn">
											<button class="btn btn-default" type="submit">Go!</button>
										</span>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					
					<div class="row">
					
					    <div class="col-md-12 col-sm-12 col-xs-12">
					        <div class="x_panel">
					            <div class="x_title">
					                <h2>기본정보<small></small></h2>
					                <div class="clearfix"></div>
					            </div>
					            <div class="x_content">
				                    <form class="form-horizontal form-label-left" id="write" action="/mgmt/admin/writeProc.do" role="form" method="post">
									<input type="hidden" id="DUP" value="0"/>
									<input type="hidden" name="GRANTS" value="N"/>
				                        <div class="form-group">
				                            <label class="control-label col-md-3 col-sm-3 col-xs-12">이름</label>

				                            <div class="col-md-6 col-sm-6 col-xs-12">
				                                <input type="text" class="form-control"name="NAME" value="" required minlength="2" maxlength="10" title="이름" data-title="이름을">
				                            </div>
				                        </div>

				                        <div class="form-group">
				                        	<label class="control-label col-md-3 col-sm-3 col-xs-12">이메일</label>
				                            <div class="col-md-6 col-sm-6 col-xs-12">
				                            <div class="input-group">
				                                <input type="email" class="form-control" name="EMAIL" required minlength="2" maxlength="255" title="이메일" data-title="이메일을">
												<span class="input-group-btn">
													<button type="button" id="btnOverlapChk" class="btn btn-primary">중복체크</button>
												</span>
				                            </div>
				                            </div>
				                        </div>

				                        <div class="form-group">
				                            <label class="control-label col-md-3 col-sm-3 col-xs-12">비밀번호</label>

				                            <div class="col-md-6 col-sm-6 col-xs-12">
				                                <input type="password" class="form-control" id="password" name="PASSWD" value="" required minlength="6" maxlength="13" title="비밀번호" data-title="비밀번호를" equalTo="password2">
				                            </div>
				                        </div>

				                        <div class="form-group">
				                            <label class="control-label col-md-3 col-sm-3 col-xs-12">비밀번호확인</label>

				                            <div class="col-md-6 col-sm-6 col-xs-12">
				                                <input type="password" class="form-control" id="password2" value="" required minlength="6" maxlength="13" title="비밀번호" data-title="비밀번호를">
				                            </div>
				                        </div>

				                        <div class="form-group">
				                        	<label class="control-label col-md-3 col-sm-3 col-xs-12">소속</label>
				                            <div class="col-md-6">
				                                <input type="text" class="form-control" name="DEPARTMENT" value="" >
				                            </div>
				                        </div>
				                        <div class="form-group">
				                        	<label class="control-label col-md-3 col-sm-3 col-xs-12">관리자 메뉴 권한</label>
				                            <div class="col-md-6">
												<div id="btnset">
													<div class="checkboxes">
														<label class="checkbox-inline">
															<input type="checkbox" name="MENUS" value="1" > 관리자 관리
														</label>
														<label class="checkbox-inline">
															<input type="checkbox" name="MENUS" value="2" > 미디어
														</label>
														<label class="checkbox-inline">
															<input type="checkbox" name="MENUS" value="3" > 사업분야
														</label>
														<!-- <label class="checkbox-inline">
															<input type="checkbox" name="MENUS" value="4" > 지속가능경영
														</label> -->
														<label class="checkbox-inline">
															<input type="checkbox" name="MENUS" value="5" > 기타
														</label>
													</div>
												</div>
				                            </div>
				                        </div>
									    <div class="form-group" >
									        <label class="control-label col-md-3 col-sm-3 col-xs-12">사용여부</label>
									        <div id="btnset">
					                            <div id="status" class="col-md-6 col-sm-6 col-xs-12 btn-group" data-toggle="buttons">
					                                <label class="btn btn-default">
					                                    <input type="radio" name="STATUS" value="Y" checked="checked"> &nbsp; 사용 &nbsp;
					                                </label>
					                                <label class="btn btn-default">
					                                    <input type="radio" name="STATUS" value="N" > 미사용
					                                </label>
					                            </div>
									        </div>
									    </div>
				                        
				                        <div class="ln_solid"></div>
				                        <div class="form-group">
				                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
				                                <a href="javascript:;" id="list" class="btn btn-primary"> 목록으로 </a>
				                                <a href="#write" onclick="javascript:doSubmit('write');" class="btn btn-success">등록</a>
				                            </div>
				                        </div>
				                    </form>
					            </div>
					        </div>
					    </div>
					</div>
				</div>
                <!-- footer content -->
                <%@ include file="../include/footer.jsp" %>
                <!-- /footer content -->

            </div>
            <!-- /page content -->
        </div>

    </div>
    <%@ include file="../include/script.jsp" %>
<form id="commonForm" name="commonForm" method="get"></form>
<script>
(function($){
	$('[name=STATUS][value='+$('[name=STATUS]:checked').val()+']').parent().addClass('active');
	$("#password2").change(function(){
		if($("#password").val() === $(this).val()){
			
		}else{
			$(this).focus();
			alert("입력하신 비밀번호가 일치하지 않습니다.");
		}
	});
	$('#btnOverlapChk').click(function(){
		if(!validateEmail($('[name=EMAIL]').val())){
			alert('올바른 이메일 주소를 입력해주세요.');
			return;
		}
		var email = $('[name=EMAIL]').val();
		$.post( "/mgmt/admin/emailSearch.do", { EMAIL: email }).done(function( data ) {
			if(data.result.COUNT==0){
				alert("사용할 수 있는 이메일입니다.");
				$("#DUP").val(1);
			}else{
				alert("사용중인 이메일입니다.");
				$("#DUP").val(0);
			}
		}).fail(function() {
			alert( "관리자에게 문의하시기 바랍니다." );
		});
	});
    $("#list").on("click", function(e){ //목록으로 버튼
        e.preventDefault();
        fn_openBoardList();
    });
})(jQuery);
function fn_openBoardList(){
    var comSubmit = new ComSubmit();
    comSubmit.setUrl("list.do");
    comSubmit.addParam("currentPageNo", "${currentPageNo}");
	if("${!empty target}"=="true"){
		comSubmit.addParam("target", "${target}");
	}
	if("${!empty keyword}"=="true"){
		comSubmit.addParam("keyword", "${keyword}");
	}
    comSubmit.submit();
}
function doSubmit(frm){
	
	if(checkValidation(frm)){
		if($("#DUP").val()=='0'){
			alert('중복체크 후 등록해 주세요.');
			return;
		}
		$('form#'+frm).submit();
	}
}
</script>
</body>

</html>