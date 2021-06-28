<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="toDay" class="java.util.Date" />
<c:set var="req" value="${pageContext.request}" />
<fmt:bundle basename="config.properties.system">
<fmt:message key="sys.domainName" var="domainName"/>
</fmt:bundle>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/include/header.jsp" %>
<meta name="keywords" content="SM그룹, SM그룹 사업분야, SM그룹 레저, 레저, 사업분야, SM레저, 에스엠 레저, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 레저">
<meta name="description" content="SM그룹의 사업분야 중 레저부문 페이지 입니다. 다양한 레저 관련 계열사를 소개합니다.">
<title>레저 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="business sub reisure">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2>
                    <span>국내 최고 수준의 프리미엄 브랜드 “TOPS 10”</span>을 통해<br>
                    세련되고 정교한 품질의 서비스와 시설을 제공하고 있습니다.
                </h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <div class="contents_top">
					<!-- s: breadcrumb -->
                    <ul class="breadcrumb">
                        <li class="home">홈</li>
                        <li class="depth1">사업분야</li>
                        <li class="depth2">레저</li>
                    </ul>
                    <!--// e: breadcrumb -->
                    <div class="tab_wrap">
                        <ul>
                            <li>
                                <a href="manufacturing.do">제조</a>
                            </li>
                            <li>
                                <a href="construction.do">건설</a>
                            </li>
                            <li>
                                <a href="shipping-industry.do">해운</a>
                            </li>
                            <li>
                                <a href="media-service.do">미디어·서비스</a>
                            </li>
                            <li>
                                <a href="reisure.do" class="on">레저</a>
                            </li>
                        </ul>
                    </div>
				</div>
                <div class="cont_tit">
                    <h3>레저</h3>
                    <p>문화, 예술, 레저가 공존하는 고품격 복합리조트</p>
                </div>
                <div class="section">
                    <!-- s: list -->
                    <div class="thumb_list">
                        <div class="board_list">
                            <ul class="board">
								<c:choose>
									<c:when test="${fn:length(list) > 0}">
										<c:forEach items="${list }" var="row" end="${fn:length(list)}" varStatus="status">
		                                <li>
		                                	<c:choose>
		                                		<c:when test="${row.STATUS_SUB=='Y' }">
		                                		<a href="view.do?IDX=${row.IDX }">
		                                		</c:when>
		                                		<c:otherwise>
                                                    <c:choose>
                                                        <c:when test="${not empty row.URL}">
                                                        <a href="${row.URL }" target="_blank">
                                                        </c:when>
                                                        <c:otherwise>
                                                        <a href="#none">
                                                        </c:otherwise>
		                                	        </c:choose>
		                                		</c:otherwise>
		                                	</c:choose>
		                                        <div class="thumb_area">
		                                            <img src="${row.PATH}${row.THUMB }" alt="">
		                                        </div>
		                                        <div class="txt_area">
		                                            <p class="cate">
		                                            	${row.NAME }
														<c:if test="${not empty row.NAME_SUB}">
														<span>${row.NAME_SUB }</span>
														</c:if>
		                                            </p>
		                                            <p class="tit">${row.DESCRIPTION }</p>
		                                        </div>
		                                    </a>
		                                </li>
                                        <c:if test="${status.count%3==0&&status.count<status.end}">
                                        </ul>
                                        <ul class="board">
                                        </c:if>
										</c:forEach>
									</c:when>
									<c:otherwise>
									</c:otherwise>
                                </c:choose>
                            </ul>
                        </div>
                    </div>
                    <!--// e: list -->
                </div>
                <%@ include file="/include/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/footer.jsp" %>
	</div>
	<%@ include file="/include/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>