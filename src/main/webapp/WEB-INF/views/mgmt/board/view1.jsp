<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/common.tld"%>
<jsp:scriptlet>
pageContext.setAttribute("crlf", "\r\n");
pageContext.setAttribute("lf", "\n");
pageContext.setAttribute("cr", "\r");
</jsp:scriptlet>
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
				<div class="page-wrap page-list"data-menu="mgmt|board|pid|${PID }">
					<div class="page-title">
					    <div class="title_left">
							<h3>${category.DESCRIPTION } <small></small></h3>
					    </div>
						<div class="title_right">
							<div class="col-md-8 col-sm-8 col-xs-12 form-group pull-right top_search">
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					
					<div class="row">
					
					    <div class="col-md-12 col-sm-12 col-xs-12">
					        <div class="x_panel">
					            <div class="x_title">
					                <h2>${map.TITLE}<small>${map.NAME} <span>(${fn:substring(map.UPDA_DTM,0,10)})</small></h2>
					            	<div class="langright">
					            	</div>
					                <div class="clearfix"></div>
					            </div>
					            <div class="x_content">
									<ul class="list-unstyled timeline">
									<c:if test="${not empty map.LANG}">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>언어</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                ${map.LANG}
									            </div>
									        </div>
									    </li>
									</c:if>
									<c:if test="${not empty map.SECTION}">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>그룹사</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                ${map.SECTION}
									            </div>
									        </div>
									    </li>
									</c:if>
									<c:if test="${not empty map.TITLE}">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>제목</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                ${map.TITLE}
									            </div>
									        </div>
									    </li>
									</c:if>
									
								    <c:if test="${fn:length(category.TYPES) > 0}">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>구분</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                ${map.GUBUN}
									            </div>
									        </div>
									    </li>
								    </c:if>
									<c:if test="${not empty map.CONTENTS}">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>내용</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                ${map.CONTENTS}
									            </div>
									        </div>
									    </li>
									</c:if>
									<c:if test="${not empty map.CONTENTS_MOBILE}">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>모바일 내용</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                ${map.CONTENTS_MOBILE}
									            </div>
									        </div>
									    </li>
									</c:if>
								    <c:if test="${not empty map.TAGS}">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>썸네일 노출 내용</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                ${fn:replace(map.TAGS,lf,'<br>')}
									            </div>
									        </div>
									    </li>
								    </c:if>
									<c:if test="${category.CODE=='social' }">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>비디오</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
				                                    <div class="embed-responsive embed-responsive-16by9">
												    <iframe class="embed-responsive-item" src="http://video.smgroup.co.kr/${ct:getYouTubeId(map.VIDEO)}"></iframe>
												  </div>
									                ${map.VIDEO}
									            </div>
									        </div>
									    </li>
									</c:if>
								    <c:if test="${category.SLUG == 'mainslide'}">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>URL</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                ${map.VIDEO} 
									                <label class="btn btn-xs btn-warning">${map.RECOM=='Y'?'새창':'현재창'}</label>
									            </div>
									        </div>
									    </li>
								    </c:if>
								    <c:if test="${category.SLUG=='gallery'}">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>비디오</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                <a href="${map.VIDEO}" target="_blank">${map.VIDEO}</a>
									            </div>
									        </div>
									    </li>
								    </c:if>
								    <li>
								        <div class="block">
								            <div class="tags">
								                <div class="tag">
								                    <span>조회수</span>
								                </div>
								            </div>
								            <div class="block_content">
			                                    <h2 class="title"></h2>
								                ${map.HIT_CNT}
								            </div>
								        </div>
								    </li>
									<c:if test="${not empty map.STATUS}">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>공개여부</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                <span class="btn btn-default btn-sm">${map.STATUS=="Y"?"공개":"비공개"}</span>
									            </div>
									        </div>
									    </li>
									</c:if>
								    <!-- 
									<c:if test="${not empty map.MAINSTATUS}">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>메인공개여부</span>
									                </div>
									            </div>
									            <div class="block_content">
				                                    <h2 class="title"></h2>
									                <span class="btn btn-default btn-sm">${map.MAINSTATUS=="Y"?"공개":"비공개"}</span>
									            </div>
									        </div>
									    </li>
									</c:if>
									 -->
								 <c:if test="${category.CODE=='event'}">
										    <li>
										        <div class="block">
										            <div class="tags">
										                <div class="tag">
										                    <span>추천여부</span>
										                </div>
										            </div>
										            <div class="block_content">
					                                    <h2 class="title"></h2>
					                                    ${map.RECOM=='Y'?'추천':''}
										            </div>
										        </div>
										    </li>
										    <li>
										        <div class="block">
										            <div class="tags">
										                <div class="tag">
										                    <span>시작일</span>
										                </div>
										            </div>
										            <div class="block_content">
					                                    <h2 class="title"></h2>
					                                    ${map.START_DTM}
										            </div>
										        </div>
										    </li>
										    <li>
										        <div class="block">
										            <div class="tags">
										                <div class="tag">
										                    <span>종료일</span>
										                </div>
										            </div>
										            <div class="block_content">
					                                    <h2 class="title"></h2>
					                                    ${map.END_DTM}
										            </div>
										        </div>
										    </li>
								    </c:if>
									<c:if test="${not empty map.UPDA_DTM}">
										    <li>
										        <div class="block">
										            <div class="tags">
										                <div class="tag">
										                    <span>수정일</span>
										                </div>
										            </div>
										            <div class="block_content">
					                                    <h2 class="title"></h2>
					                                    ${fn:substring(map.UPDA_DTM,0,10)}
										            </div>
										        </div>
										    </li>
									</c:if>
									<c:if test="${category.CODE!='NOsocial' }">
										<c:if test="${not empty files}">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>웹 업로드</span>
									                </div>
									            </div>
									            <div class="block_content">
												<c:forEach var="fileGubun" items="${files}" varStatus="id">
									            		<c:choose>
									            			<c:when test="${fileGubun.key == 'thumb'}">
									            			<c:set var="itemTitle" value="썸네일" />
									            			</c:when>
									            			<c:when test="${fileGubun.key == 'file'}">
									            			<c:set var="itemTitle" value="파일" />
									            			</c:when>
									            			<c:when test="${fileGubun.key == 'gallery'}">
									            			<c:set var="itemTitle" value="이미지" />
									            			</c:when>
									            			<c:when test="${fileGubun.key == 'slide'}">
									            			<c:set var="itemTitle" value="슬라이드" />
									            			</c:when>
									            			
									            			<c:when test="${fileGubun.key == 'main'}">
									            			<c:set var="itemTitle" value="메인이미지" />
									            			</c:when>
									            			
									            			<c:otherwise>
									            			<c:set var="itemTitle" value="${fileGubun.key}" />
									            			</c:otherwise>
									            		</c:choose>
									                <h2 class="title page-header">${itemTitle }</h2>
												    <div class="attachment">
												        <ul>
									                    <c:forEach var="row" items="${fileGubun.value }">
												            <li>
												                <a href="${domainName}${row.PATH_NAME }${row.STORED_FILE_NAME }" data-idx="${row.IDX }" class="atch-thumb imgpopup">
												                <c:choose>
												                		<c:when test="${fileGubun.key == 'file'}">
												                		<i class="fa fa-file-o"></i>
												                		</c:when>
												            			<c:otherwise>
												            			<img src="${domainName}${row.PATH_NAME }${row.STORED_FILE_NAME }" alt="img">
												            			</c:otherwise>
												                	</c:choose>
												                	</a>
												
												                <div class="file-name">${row.ORIGINAL_FILE_NAME }</div><span><fmt:formatNumber value="${row.FILE_SIZE }" pattern="#,###.#" />KB</span>
												                <div class="links">
												                    <a href="${domainName}${row.PATH_NAME }${row.STORED_FILE_NAME }" data-idx="${row.IDX }" class="imgpopup">View</a>
												                    -
												                    <a href="${domainName}${row.PATH_NAME }${row.STORED_FILE_NAME }" data-idx="${row.IDX }" name="file">Download</a>
												                </div>
												            </li>
									                    </c:forEach>
												        </ul>
													</div>
												</c:forEach>
									            </div>
									        </div>
									    </li>
										</c:if>
										<c:if test="${not empty mobfiles}">
									    <li>
									        <div class="block">
									            <div class="tags">
									                <div class="tag">
									                    <span>모바일 업로드</span>
									                </div>
									            </div>
									            <div class="block_content">
												<c:forEach var="fileGubun" items="${mobfiles}" varStatus="id">
									            		<c:choose>
									            			<c:when test="${fileGubun.key == 'mobthumb'}">
									            			<c:set var="itemTitle" value="썸네일" />
									            			</c:when>
									            			<c:when test="${fileGubun.key == 'mobfile'}">
									            			<c:set var="itemTitle" value="파일" />
									            			</c:when>
									            			<c:when test="${fileGubun.key == 'mobgallery'}">
									            			<c:set var="itemTitle" value="이미지" />
									            			</c:when>
									            			<c:when test="${fileGubun.key == 'mobslide'}">
									            			<c:set var="itemTitle" value="슬라이드" />
									            			</c:when>
									            			<c:when test="${fileGubun.key == 'mobmain'}">
									            			<c:set var="itemTitle" value="메인이미지" />
									            			</c:when>
									            			<c:otherwise>
									            			<c:set var="itemTitle" value="${fileGubun.key}" />
									            			</c:otherwise>
									            		</c:choose>
									                <h2 class="title page-header">${itemTitle }</h2>
												    <div class="attachment">
												        <ul>
									                    <c:forEach var="row" items="${fileGubun.value }">
												            <li>
												                <a href="${domainName}${row.PATH_NAME }${row.STORED_FILE_NAME }" data-idx="${row.IDX }" class="atch-thumb imgpopup">
												                <c:choose>
												                		<c:when test="${fileGubun.key == 'mobfile'}">
												                		<i class="fa fa-file-o"></i>
												                		</c:when>
												            			<c:otherwise>
												            			<img src="${domainName}${row.PATH_NAME }${row.STORED_FILE_NAME }" alt="img">
												            			</c:otherwise>
												                	</c:choose>
												                	</a>
												
												                <div class="file-name">${row.ORIGINAL_FILE_NAME }</div><span><fmt:formatNumber value="${row.FILE_SIZE }" pattern="#,###.#" />KB</span>
												                <div class="links">
												                    <a href="${domainName}${row.PATH_NAME }${row.STORED_FILE_NAME }" data-idx="${row.IDX }" class="imgpopup">View</a>
												                    -
												                    <a href="${domainName}${row.PATH_NAME }${row.STORED_FILE_NAME }" data-idx="${row.IDX }" name="file">Download</a>
												                </div>
												            </li>
									                    </c:forEach>
												        </ul>
													</div>
												</c:forEach>
									            </div>
									        </div>
									    </li>
										</c:if>
								    	</c:if>
								    </div>
				                    <div class="ln_solid_none"></div>
									<div class="btn-set">
										<a href="javascript:;" onclick="" class="btn btn-info" id="modify">수정하기</a>
										<a href="javascript:;" class="btn btn-danger" id="delete">삭제하기</a>
										<a href="javascript:;"class="btn btn-primary" id="list">목록으로</a>
										
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
	    $("a[name='file']").on("click", function(e){ //파일 이름
	        e.preventDefault();
	        fn_downloadFile($(this));
	    });
	})(jQuery);
	function fn_openBoardList(){
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/mgmt/board/list.do");
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
		if("${!empty param.GUBUN}"=="true"){
			comSubmit.addParam("GUBUN", "${param.GUBUN}");
		}
	    comSubmit.submit();
	}
	 
	function fn_openBoardUpdate(){
	    var idx = "${map.IDX}";
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/mgmt/board/modify.do");
	    comSubmit.addParam("IDX", idx);
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
		if("${!empty param.GUBUN}"=="true"){
			comSubmit.addParam("GUBUN", "${param.GUBUN}");
		}
	    comSubmit.submit();
	}
	function fn_deleteBoard(){
	    var idx = "${map.IDX}";
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/mgmt/board/deleteProc.do");
		if("${!empty PID}"=="true"){
			comSubmit.addParam("PID", "${PID}");
		}
		if("${!empty target}"=="true"){
			comSubmit.addParam("target", "${target}");
		}
		if("${!empty keyword}"=="true"){
			comSubmit.addParam("keyword", "${keyword}");
		}
		if("${!empty param.GUBUN}"=="true"){
			comSubmit.addParam("GUBUN", "${param.GUBUN}");
		}
	    comSubmit.addParam("IDX", idx);
	    comSubmit.submit();
	     
	}
	function fn_downloadFile(obj){
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("/downloadFile.do");
	    comSubmit.addParam("IDX", obj.data("idx"));
	    comSubmit.addParam("BOARD_NAME", "BOARD");
	    comSubmit.submit();
	}
	</script>
</body>

</html>
