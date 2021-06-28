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
				<div class="page-wrap page-edit"  data-menu="mgmt|admin">
					<div class="page-title">
						<div class="title_left">
							<h3>관리자 수정 <small></small></h3>
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
				                    <form class="form-horizontal form-label-left" id="user_submit"  role="form" method="post" action="/mgmt/admin/modifyProc.do">
					                    <input type="hidden" name="IDX" value="${map.IDX }">
					                    <input type="hidden" name="GRANTS" value="N"/>
				                        <div class="form-group">
				                            <label class="control-label col-md-3 col-sm-3 col-xs-12">이름</label>

				                            <div class="col-md-6">
				                                <input type="text" class="form-control" name="NAME" value="${map.NAME }" required="required" title="이름" data-title="이름을">
				                            </div>
				                        </div>

				                        <div class="form-group">
				                        	<label class="control-label col-md-3 col-sm-3 col-xs-12">이메일</label>
				                            <div class="col-md-6">
				                                <input type="email" class="form-control" name="EMAIL" value="${map.EMAIL }" disabled="disabled">
				                            </div>
				                        </div>
				                        <div class="form-group">
				                            <label class="control-label col-md-3 col-sm-3 col-xs-12">비밀번호</label>

				                            <div class="col-md-6">
				                                <input type="password" class="form-control" name="PASSWD" value="" minlength="6" maxlength="13" title="비밀번호" data-title="비밀번호를" id="password">
				                            </div>
				                        </div>

				                        <div class="form-group">
				                            <label class="control-label col-md-3 col-sm-3 col-xs-12">비밀번호확인</label>

				                            <div class="col-md-6">
				                                <input type="password" class="form-control" minlength="6" id="password2" maxlength="13" title="비밀번호" data-title="비밀번호를" equalTo="password2">
				                            </div>
				                        </div>
				                        <div class="form-group">
				                        	<label class="control-label col-md-3 col-sm-3 col-xs-12">소속</label>
				                            <div class="col-md-6">
				                                <input type="text" class="form-control" name="DEPARTMENT" value="${map.DEPARTMENT }" >
				                            </div>
				                        </div>
				                        <c:if test="${ct:getMenusBool(sessionScope.admin.MENUS,'1')==true||sessionScope.admin.GRANTS=='Y'}">
				                        <%-- <div class="form-group">
				                        	<label class="control-label col-md-3 col-sm-3 col-xs-12">운영자 권한</label>
				                            <div class="col-md-6">
												<div id="btnset">
													<div class="checkboxes">
														<label class="radio-inline">
															<input type="radio" name="GRANTS" value="Y" ${map.GRANTS=='Y'?'checked="checked"':''}> Marster
														</label>
														<label class="radio-inline">
															<input type="radio" name="GRANTS" value="N" ${map.GRANTS=='N'?'checked="checked"':''}> Local
														</label>
													</div>
												</div>
				                            </div>
				                        </div> --%>
				                        
				                        <div class="form-group">
				                        	<label class="control-label col-md-3 col-sm-3 col-xs-12">관리자 메뉴 권한</label>
				                            <div class="col-md-6">
												<div id="btnset">
													<div class="checkboxes">
														<label class="checkbox-inline">
															<input type="checkbox" name="MENUS" value="1" ${fn:indexOf(map.MENUS,"1")>-1?'checked="checked"':'' }> 관리자 관리
														</label>
														<label class="checkbox-inline">
															<input type="checkbox" name="MENUS" value="2" ${fn:indexOf(map.MENUS,"2")>-1?'checked="checked"':'' }> 미디어
														</label>
														<label class="checkbox-inline">
															<input type="checkbox" name="MENUS" value="3" ${fn:indexOf(map.MENUS,"3")>-1?'checked="checked"':'' }> 사업분야
														</label>
														<%-- <label class="checkbox-inline">
															<input type="checkbox" name="MENUS" value="4" ${fn:indexOf(map.MENUS,"4")>-1?'checked="checked"':'' }> 지속가능경영
														</label> --%>
														<label class="checkbox-inline">
															<input type="checkbox" name="MENUS" value="5" ${fn:indexOf(map.MENUS,"5")>-1?'checked="checked"':'' }> 기타
														</label>
													</div>
												</div>
				                            </div>
				                        </div>
									    <div class="form-group" >
									        <label class="control-label col-md-3 col-sm-3 col-xs-12">사용여부</label>
									        <div id="btnset">
					                            <div id="STATUS" class="col-md-6 col-sm-6 col-xs-12 btn-group" data-toggle="buttons">
					                                <label class="btn btn-default ${map.STATUS=='Y'?'active':'' }">
					                                    <input type="radio" name="STATUS" value="Y" ${map.STATUS=='Y'?'checked="checked"':'' }> &nbsp; 사용 &nbsp;
					                                </label>
					                                <label class="btn btn-default ${map.STATUS=='N'?'active':'' }">
					                                    <input type="radio" name="STATUS" value="N" ${map.STATUS=='N'?'checked="checked"':'' }> 미사용
					                                </label>
					                            </div>
									        </div>
									    </div>
										</c:if>

				                        <div class="ln_solid"></div>
				                        <div class="form-group">
				                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
				                                <a href="javascript:;" id="list" class="btn btn-primary"> 목록으로 </a>
				                                <a href="javascript:doSubmit('user_submit');" class="btn btn-success">수정</a>
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
		$("#password2").change(function(){
			if($("#password").val() === $(this).val()){
				
			}else{
				$(this).focus();
				alert("입력하신 비밀번호가 일치하지 않습니다.");
			}
		});
	    $("#list").on("click", function(e){ //목록으로 버튼
	        e.preventDefault();
	        fn_openBoardList();
	    });
	     
	})(jQuery);
	function fn_openBoardList(){
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/mgmt/admin/list.do");
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
			$('form#'+frm).submit();
		}
	}
	</script>
</body>

</html>
