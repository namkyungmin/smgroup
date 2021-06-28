<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/common.tld"%>
<c:set var="req" value="${pageContext.request}" />
<fmt:bundle basename="config.properties.system">
<fmt:message key="sys.domainName" var="domainName"/>
</fmt:bundle>
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
				<div class="page-wrap page-list" data-menu="mgmt|company|sub">
					<div class="page-title">
						<div class="title_left">
							<h3>서브페이지 관리<small></small></h3>
						</div>
						<c:choose>
						<c:when test="${category.MAIN=='Y' }">
						</c:when>
						<c:otherwise>
						<div class="title_right">
							<div class="col-md-8 col-sm-8 col-xs-12  pull-right">
								<form name="frmSearch" action="list.do" class="form-inline text-right">
									<input type="hidden" name="PID" value="${PID }"/>
									
									<c:if test="${fn:length(category.TYPES) > 0}">
									<div class="form-group">
										<select name="TYPES" class="form-control">
											<option value="">전체</option>
											<c:forTokens items="${category.TYPES}" delims="," var="item">
											<option value="${item}" ${item==param.TYPES?'selected="selected"':'' }>${item}</option>
											</c:forTokens>
										</select>
									</div>
									</c:if>
									<div class="form-group">
										<select name="LANG" class="form-control">
											<option value="">언어</option>
											<option value="KO" ${"KO"==param.LANG?'selected="selected"':'' }>KO</option>
											<option value="EN" ${"EN"==param.LANG?'selected="selected"':'' }>EN</option>
										</select>
  									</div>
									<%-- <div class="form-group">
										<select name="target" class="form-control">
											<option value="all" ${"KO"==param.target?'selected="selected"':'' }>구분</option>
											<option value="title" ${"title"==param.target?'selected="selected"':'' }>제목</option>
											<option value="contents" ${"contents"==param.target?'selected="selected"':'' }>내용</option>
											<option value=section ${"section"==param.target?'selected="selected"':'' }>그룹사</option>
										</select>
  									</div> --%>

									<div class="form-group">
										<select name="SECTIONS" class="form-control">
											<option value="">전체보기</option>
											<c:forEach var="entry" items="${sections_list}" varStatus="status">
											<option value="${entry.key}" ${entry.key==SECTIONS?'checked':''}>${entry.value}</option>
											</c:forEach>
										</select>
  									</div>
									<div class="form-group">
										<input type="text" name="keyword" class="form-control" id="txt" value="${param.keyword }" placeholder="검색어 입력" />
									</div>
									<button class="btn btn-default" type="submit">Go!</button>
								</form>
							</div>
						</div>
						</c:otherwise>
						</c:choose>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>목록<small></small></h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content  table-responsive">
									<table class="table table-striped responsive-utilities jambo_table bulk_action">
										<thead>
											<tr class="headings">
												<th width="10%" class="column-title text-center">번호</th>
												<th width="20%" class="column-title text-center">사업분야</th>
												<th width="" class="column-title text-center">계열사명 </th>
												<th width="20%" class="column-title text-center">계열사명 서브</th>
												<th width="10%" class="column-title text-center">작성자</th>
												<th width="10%" class="column-title text-center">등록일</th>
												<th width="10%" class="column-title text-center">노출여부 (KR/EN)</th>
											</tr>
										</thead>
										<tbody>
										
										<c:choose>
											<c:when test="${fn:length(list) > 0}">
												<c:set var="num" value="${paginationInfo.getTotalRecordCount() - paginationInfo.getPageSize() * (paginationInfo.getCurrentPageNo()-1) }"/>
												<c:forEach items="${list }" var="row">
												<tr>
													<td class="text-center">
														${num }
														<c:set var="num" value="${num-1}"/>
													</td>
													<td class="text-center">
														<c:forEach var="entry" items="${sections_list}" varStatus="status">
														${entry.key==row.SECTIONS?entry.value:"" }
														</c:forEach>
													</td>
													<td>
														<a href="sub_modify.do?IDX=${row.IDX }" data-idx="${row.IDX }">${row.NAME }</a>
														<c:if test="${row.CNT_SUB>0 }">
															<i class="fa fa-list-alt"></i>
														</c:if>
													</td>
													<td class="text-center">${row.NAME_SUB }</td>
													<td class="text-center">${row.CREA_NAME }</td>
													<td class="text-center">${fn:substring(row.CREA_DTM,0,10)}</td>
													<td class="text-center">
														<c:choose>
															<c:when test="${ not empty row.STATUS_SUB }">
															${row.STATUS_SUB } / ${row.STATUS_SUB_EN }
															</c:when>
															<c:otherwise>
															미입력
															</c:otherwise>
														</c:choose>
														
													</td>
												</tr>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<tr>
													<td colspan="13">등록된 글이 없습니다.</td>
												</tr>
											</c:otherwise>
										</c:choose>
										</tbody>
										<tfoot>
											<td colspan="13">
												<div class="pull-left foot_left_showing">
													Total ${paginationInfo.getTotalRecordCount() } entries
												</div>
												<div class="pull-right">
													<ul class="pagination">
													<c:if test="${not empty paginationInfo}">
														<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_search"/>
													</c:if>
													</ul>
													<input type="hidden" id="currentPageNo" name="currentPageNo"/>
												</div>
												
											</td>
										</tfoot>
									
									</table>
									<div class="form-group">
										<div class="col-md-6 hidden">
											
										</div>
										<div class="col-md-6 pull-right text-right">
											
										</div>
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
	    $("a[data-idx]").on("click", function(e){ //제목 
	        e.preventDefault();
	        fn_openBoardDetail($(this));
	    });
		$('tr[data-href]').on("dblclick", function() {
		    document.location = $(this).data('href');
		}).css({'cursor':'pointer'});
		
		$('tr[data-href]').on("doubletap", function() {
		    document.location = $(this).data('href');
		});
	    $("#btnSearch").click(function(){
	    	$("form[name=search]").submit();
	    });
	})(jQuery);
	function fn_openBoardDetail(obj){
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/mgmt/company/sub_modify.do");
	    comSubmit.addParam("IDX", obj.data("idx"));
	    comSubmit.addParam("currentPageNo", "${currentPageNo}");
		if("${!empty PID}"=="true"){
			comSubmit.addParam("PID", "${PID}");
		}
		if("${!empty target}"=="true"){
			comSubmit.addParam("target", "${target}");
		}
		if("${!empty keyword}"=="true"){
			comSubmit.addParam("keyword", "${keyword}");
		}
		if("${!empty GUBUN}"=="true"){
			comSubmit.addParam("GUBUN", "${GUBUN}");
		}
	    comSubmit.submit();
	}


	function fn_search(pageNo){
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/mgmt/company/sub_list.do");
	    comSubmit.addParam("currentPageNo", pageNo);
		if("${!empty PID}"=="true"){
			comSubmit.addParam("PID", "${PID}");
		}
		if("${!empty target}"=="true"){
			comSubmit.addParam("target", "${target}");
		}
		if("${!empty keyword}"=="true"){
			comSubmit.addParam("keyword", "${keyword}");
		}
		
		if("${!empty GUBUN}"=="true"){
			comSubmit.addParam("GUBUN", "${GUBUN}");
		}
		
	    comSubmit.submit();
	}
	</script>
</body>

</html>