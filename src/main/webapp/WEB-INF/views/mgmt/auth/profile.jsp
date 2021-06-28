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
				<div class="page-wrap page-profile"  data-menu="mgmt|admin">
					<div class="page-title">
						<div class="title_left">
							<h3>관리자 상세<small></small></h3>
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
					                <h2>기본정보<small>[#: ${map.ID }] <span>( 가입일: ${fn:substring(map.CREA_DTM,0,10)} )</small></h2>
					                <div class="clearfix"></div>
					            </div>
					            <div class="x_content">
									<ul class="list-unstyled timeline">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>이름</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                ${map.NAME }
									            </div>
									        </div>
									    </li>
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>이메일</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                ${map.EMAIL }
									            </div>
									        </div>
									    </li>
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>소속</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                ${map.DEPARTMENT }
									            </div>
									        </div>
									    </li>
									    <%-- <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>운영자 권한 </span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
													<c:choose>
														<c:when test="${map.GRANTS eq 'Y'}">
															Master
														</c:when>
														<c:when test="${map.GRANTS eq 'N'}">
															Local
														</c:when>
													</c:choose>
									            </div>
									        </div>
									    </li> --%>
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>관리자 메뉴 권한 </span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
													${fn:indexOf(map.MENUS,"1")>-1?'<button disabled class="btn btn-sm btn-default mr-2">관리자 관리</button>':''}
													${fn:indexOf(map.MENUS,"2")>-1?'<button disabled class="btn btn-sm btn-default mr-2">미디어</button>':''}
													${fn:indexOf(map.MENUS,"3")>-1?'<button disabled class="btn btn-sm btn-default mr-2">사업분야</button>':''}
													${fn:indexOf(map.MENUS,"4")>-1?'<button disabled class="btn btn-sm btn-default mr-2">지속가능경영</button>':''}
													${fn:indexOf(map.MENUS,"5")>-1?'<button disabled class="btn btn-sm btn-default mr-2">기타</button>':''}
									            </div>
									        </div>
									    </li>
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>사용여부</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                <span class="btn btn-default btn-sm">${map.STATUS=='Y'?'사용':'미사용' }</span>
									            </div>
									        </div>
									    </li>
									</ul>
				                    <div class="ln_solid_none"></div>
									<div class="btn-set">
										<a href="javascript:;" id="modify" class="btn btn-info"> 수정하기 </a>
										<a href="javascript:;" id="delete" class="btn btn-danger"> 삭제하기 </a>
										<a href="javascript:;" id="list" class="btn btn-primary"> 목록으로 </a>
										
									</div>
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
	    $("#list").on("click", function(e){ //목록으로 버튼
	        e.preventDefault();
	        fn_openBoardList();
	    });
	     
	    $("#modify").on("click", function(e){
	        e.preventDefault();
	        fn_openBoardUpdate();
	    });
	
	    $("#delete").on("click", function(e){ //삭제하기 버튼
	    	if(confirm("삭제하시겠습니까?")){
		        e.preventDefault();
		        fn_deleteBoard();
	    	}
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
	 
	function fn_openBoardUpdate(){
	    var idx = "${map.IDX}";
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/mgmt/admin/modify.do");
	    comSubmit.addParam("IDX", idx);
	    comSubmit.addParam("currentPageNo", "${currentPageNo}");
		if("${!empty target}"=="true"){
			comSubmit.addParam("target", "${target}");
		}
		if("${!empty keyword}"=="true"){
			comSubmit.addParam("keyword", "${keyword}");
		}
	    comSubmit.submit();
	}
	function fn_deleteBoard(){
	    var idx = "${map.IDX}";
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/mgmt/admin/deleteProc.do");
	    comSubmit.addParam("IDX", idx);
	    comSubmit.submit();
	     
	}
	</script>
</body>

</html>