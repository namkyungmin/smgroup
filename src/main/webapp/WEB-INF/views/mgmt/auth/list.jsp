<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="req" value="${pageContext.request}" />
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
				<div class="page-wrap page-list"  data-menu="mgmt|admin">
					<div class="page-title">
						<div class="title_left">
							<h3>관리자 리스트 <small></small></h3>
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
					                <h2>목록<small>더블클릭하시면 상세화면을 보실 수 있습니다.</small></h2>
					                <div class="clearfix"></div>
					            </div>
					            <div class="x_content table-responsive">

									<table class="table table-striped responsive-utilities jambo_table bulk_action">
										<thead>
											<tr class="headings">
												<th width="5%" class="column-title text-center">NO</th>
												<th width="15%" class="column-title text-center">이름 </th>
												<th class="column-title text-center">이메일 </th>
												<th width="15%" class="column-title text-center">소속 </th>
												<th width="15%" class="column-title text-center">가입일 </th>
												<th width="10%" class="column-title text-center">사용여부 </th>
												<th width="10%" class="column-title text-center">마지막로그인 </th>
												</th>
												<th class="bulk-actions" colspan="7">
												<a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
												</th>
											</tr>
										</thead>
										<tbody>
										 <c:choose>
										    <c:when test="${fn:length(list) > 0}">
												<c:set var="num" value="${paginationInfo.getTotalRecordCount() - paginationInfo.getPageSize() * (paginationInfo.getCurrentPageNo()-1) }"/>
										        <c:forEach items="${list }" var="row">
													<tr">
														<td class="text-center">
															${num }
															<c:set var="num" value="${num-1}"/>
														</td>
														<td class="text-center">
															<a href="view.do?IDX=${row.IDX }">${row.NAME }</a>
														</td>
														<td class="text-center"><a href="view.do?IDX=${row.IDX }">${row.EMAIL }</a></td>
														<td class="text-center">${row.DEPARTMENT }</td>
														<td class="text-center">${fn:substring(row.CREA_DTM,0,10)}</td>
														<td class="text-center"><span class="statusbar fa fa-${row.STATUS=='Y'?'check-circle-o':'circle-o' }" data-toggle="tooltip" data-placement="bottom" title="" data-html="true"></span></td>
														<td class="text-center last">${fn:substring(row.LOGIN_DTM,0,10)}</td>
													</tr>
										        </c:forEach>
										    </c:when>
										    <c:otherwise>
										        <tr>
										            <td colspan="5">조회된 결과가 없습니다.</td>
										        </tr>
										    </c:otherwise>
										</c:choose>
										
										</tbody>
										<tfoot>
											<td colspan="7">
												<div class="pull-left foot_left_showing">
													Total ${fn:length(list)} entries
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
				                        <div class="col-md-6 pull-right text-right">
				                            <a href="/mgmt/admin/write.do" class="btn btn-success">관리자추가</a>
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
	<script>
		$(function(){
			
			$('tr[data-href]').on("dblclick", function() {
			    document.location = $(this).data('href');
			}).css({'cursor':'pointer'});
			
			$('tr[data-href]').on("doubletap", function() {
			    document.location = $(this).data('href');
			});
			
			$('[name=frmSearch]').submit(function(){
				if($(this).find('#txt').val()==""){
					location.href="<?php echo $router->pathFor('user-list', [])?>";
					return false;
				}
				
			})
		});
	</script>
</body>

</html>