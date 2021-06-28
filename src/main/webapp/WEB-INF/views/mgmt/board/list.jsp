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
				<div class="page-wrap page-list" data-menu="mgmt|board|pid|${PID }">
					<div class="page-title">
						<div class="title_left">
							<h3>${category.DESCRIPTION } <small class="hidden">${category.SLUG}</small></h3>
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
									<div class="form-group">
										<select name="target" class="form-control">
											<option value="all" ${"KO"==param.target?'selected="selected"':'' }>구분</option>
											<option value="title" ${"title"==param.target?'selected="selected"':'' }>제목</option>
											<option value="contents" ${"contents"==param.target?'selected="selected"':'' }>내용</option>
											<option value=section ${"section"==param.target?'selected="selected"':'' }>그룹사</option>
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
									<c:choose>
						            <c:when test="${category.SLUG=='media'||category.SLUG=='news'}">
									<a href="list.do?PID=${PID }${param.MAINSTATUS=='Y'?'':'&MAINSTATUS=Y'}" class="btn btn-sm btn-${param.MAINSTATUS=='Y'?'primary':'default'} pull-right h3">메인노출</a>
									<a href="list.do?PID=${PID }${param.RECOM=='Y'?'':'&RECOM=Y'}" class="btn btn-sm btn-${param.RECOM=='Y'?'primary':'default'} pull-right h3 mr-3">상단노출</a>
									</c:when>
									</c:choose>   
									
									<div class="clearfix"></div>
								</div>
								
					            <c:choose>
						            <c:when test="${category.SLUG=='media'||category.SLUG=='news'}">
									<div class="x_content  table-responsive">
										<table class="table table-striped responsive-utilities jambo_table bulk_action">
											<thead>
												<tr class="headings">
													<th width="5%" class="column-title text-center">번호</th>
													<th width="5%" class="column-title text-center">언어</th>
													<th width="15%" class="column-title text-center">계열사 </th>
													<th class="column-title text-center">제목 </th>
													<th width="5%" class="column-title text-center">작성자</th>
													<th width="10%" class="column-title text-center">등록일</th>
													<th width="10%" class="column-title text-center">배포일</th>
													<th width="5%" class="column-title text-center">조회수</th>
													<th width="5%" class="column-title text-center">상단노출</th>
													<th width="8%" class="column-title text-center">상단노출 순서</th>
													<th width="5%" class="column-title text-center">메인노출</th>
													<th width="8%" class="column-title text-center">메인노출 순서</th>
													<th width="5%" class="column-title text-center">하단노출</th>
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
														<td class="text-center">${row.LANG }</td>
														<td class="text-center">${row.SECTION }</td>
														<td>
															<a href="view.do?IDX=${row.IDX }" data-idx="${row.IDX }">${row.TITLE }</a>
															<c:if test="${row.FILE_COUNT>0}">
															&nbsp;&nbsp;<span class="fa fa-floppy-o" data-toggle="tooltip" data-placement="bottom" title="" data-html="true"></span>
															</c:if>
														</td>
														<td class="text-center">${row.CREA_NAME }</td>
														<td class="text-center">${fn:substring(row.CREA_DTM,0,10)}</td>
														<td class="text-center">${fn:substring(row.UPDA_DTM,0,10)}</td>
														<td class="text-center">${row.HIT_CNT }</td>
														<td class="text-center"><span class="statusbar fa fa-${row.RECOM=='Y'?'check-circle-o':'circle-o' }" data-toggle="tooltip" data-placement="bottom" title="" data-html="true"></span></td>
														<td class="text-center">${row.SORT }</td>
														<td class="text-center"><span class="statusbar fa fa-${row.MAINSTATUS=='Y'?'check-circle-o':'circle-o' }" data-toggle="tooltip" data-placement="bottom" title="" data-html="true"></span></td>
														<td class="text-center">${row.MAINSORT }</td>
														<td class="text-center"><span class="statusbar fa fa-${row.STATUS=='Y'?'check-circle-o':'circle-o' }" data-toggle="tooltip" data-placement="bottom" title="" data-html="true"></span></td>
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
					                            <a href="javascript:;" onclick="fn_openBoardWrite(this)" class="btn btn-success">글쓰기</a>
					                        </div>
					                    </div>
						            </div>
					            
					                </c:when>
					                <c:when test="${category.CODE=='list'||category.CODE=='social'||category.SLUG=='admininfo'}">
									<div class="x_content  table-responsive">
										<table class="table table-striped responsive-utilities jambo_table bulk_action">
											<thead>
												<tr class="headings">
													<th width="5%" class="column-title text-center">번호</th>
													<th width="8%" class="column-title text-center">언어</th>
													<c:if test="${not empty category.TYPES }">
													<th width="10%" class="column-title text-center">구분</th>
													</c:if>
													<c:if test="${category.SLUG=='media'||category.SLUG=='news'||category.SLUG=='environment'||category.SLUG=='responsibility'}">
													<th width="10%" class="column-title text-center">계열사명</th>
													</c:if>
													<th class="column-title text-center">제목 </th>
													<th width="10%" class="column-title text-center">작성자</th>
													<th width="10%" class="column-title text-center">등록일</th>
													<th width="10%" class="column-title text-center">배포일</th>
													<th width="5%" class="column-title text-center">조회수</th>
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
														<td class="text-center">${not empty row.LANG?row.LANG:'KO' }</td>
														<c:if test="${not empty category.TYPES }">
														<td class="text-center">${row.GUBUN }</td>
														</c:if>
														<c:if test="${category.SLUG=='media'||category.SLUG=='news'||category.SLUG=='environment'||category.SLUG=='responsibility'}">
														<td class="text-center">${row.SECTION }</td>
														</c:if>
														<td>
															<a href="view.do?IDX=${row.IDX }" data-idx="${row.IDX }">${row.TITLE }</a>
															<c:if test="${row.FILE_COUNT>0}">
															&nbsp;&nbsp;<span class="fa fa-floppy-o" data-toggle="tooltip" data-placement="bottom" title="" data-html="true"></span>
															</c:if>
														</td>
														<td class="text-center">${row.CREA_NAME }</td>
														<td class="text-center">${fn:substring(row.CREA_DTM,0,10)}</td>
														<td class="text-center">${fn:substring(row.UPDA_DTM,0,10)}</td>
														<td class="text-center">${row.HIT_CNT }</td>
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
					                            <a href="javascript:;" onclick="fn_openBoardWrite(this)" class="btn btn-success">글쓰기</a>
					                        </div>
					                    </div>
						            </div>
					            
					                </c:when>
									<c:otherwise>
									<!-- 갤러리 타입 -->
						            <div class="x_content  table-responsive gallery">
					                    <div class="row">											
								            <c:choose>
								                <c:when test="${fn:length(list) > 0}">
								                    <c:forEach items="${list }" var="row">

							                        <div data-href="view.do" class="col-md-55">
							                            <div class="thumbnail">
							                                <div class="image view view-first">
							                                	<c:choose>
					                								<c:when test="${category.CODE=='social'}">
					                								<img src="https://img.youtube.com/vi/${ct:getYouTubeId(row.VIDEO)}/0.jpg" alt="image" />
					                								</c:when>
					                								<c:otherwise>
					                								<img src="${domainName}${row.IMG_NAME }" alt="image" />
					                								</c:otherwise>
					                							</c:choose>
							                                    
							                                    <div class="mask">
							                                        <p>Writer: ${row.CREA_NAME }</p>
							                                        <div class="tools tools-bottom">
							                                            <a href="javascript:;" data-idx="${row.IDX }"><i class="fa fa-link"></i></a>
							                                        </div>
							                                    </div>
							                                </div>
							                                <a href="javascript:;" data-idx="${row.IDX }" data-toggle="tooltip" data-placement="bottom" title="[${row.IDX}] ${row.UPDA_DTM }">
							                                <div class="caption">
							                                    <span class="statusbar fa fa-${row.STATUS=='Y'?'check-circle-o':'circle-o' }"></span>
							                                    ${row.RECOM=='Y'?' <span class="statusbar-a fa  fa-thumbs-up "></span>':'' }
							                                    ${fn:length(row.VIDEO) > 0&&category.SLUG!='mainslide'?' <span class="statusbar-b fa  fa-external-link "></span>':'' }
							                                  
							                                    <p>
							                                    	<c:if test="${fn:length(category.TYPES) > 0}">
							                                    	[${row.GUBUN }]
							                                    	</c:if>
						                                            <c:if test="${category.SLUG=='popup' }">
						                                            [${row.SECTION }]
						                                            </c:if>
							                                    	${row.TITLE }
							                                    	<c:if test="${category.SLUG=='mainslide'}">
							                                    	(${row.SECTION==null?'없음':row.SECTION})
							                                    	</c:if>
							                                    </p>
							                                	<div class="date text-right">${fn:substring(row.UPDA_DTM,0,10)}</div>
							                                </div>
							                                </a>
							                            </div>
							                        </div>
													
													<c:set var="totalCount" value="${row.TOTAL_COUNT }"/>
								                    </c:forEach>
								                </c:when>
								                <c:otherwise>
								                    <h4 class="col-md-12 dataTables_empty">등록된 글이 없습니다.</h4>
								                </c:otherwise>
								            </c:choose>
										</div>
										<div class="ln_solid"></div>
										<div class="form-group">
											<div class="pull-left foot_left_showing">
												Total ${totalCount } entries
											</div>
											<div class="pull-right">

												<ul class="pagination">
											    <c:if test="${not empty paginationInfo}">
											        <ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_search"/>
											    </c:if>
											    </ul>
											    <input type="hidden" id="currentPageNo" name="currentPageNo"/>
											</div>
										</div>
										<div class="form-group">
					                        <div class="col-md-6 pull-right text-right">
					                            <a href="javascript:;" onclick="fn_openBoardWrite(this)" class="btn btn-success">글쓰기</a>
					                        </div>
					                    </div>
						            </div>
						            
					                </c:otherwise>
					            </c:choose>
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

	function fn_openBoardWrite(obj){
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/mgmt/board/write.do");
		if("${!empty PID}"=="true"){
			comSubmit.addParam("PID", "${PID}");
		}
	    comSubmit.submit();
	}
	function fn_openBoardDetail(obj){
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/mgmt/board/view.do");
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
	    comSubmit.setUrl("/mgmt/board/list.do");
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