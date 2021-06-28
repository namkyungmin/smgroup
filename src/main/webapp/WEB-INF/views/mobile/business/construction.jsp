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
<%@ include file="/include/mobile/header.jsp" %>
<meta name="keywords" content="SM그룹, SM그룹 사업분야, SM그룹 건설, 건설, 사업분야, SM건설, 에스엠 건설, 에스엠그룹, 에스엠그룹 사업분야, 에스엠그룹 건설">
<meta name="description" content="SM그룹 사업분야 중 건설부문 페이지 입니다. 다양한 건설 관련 계열사를 소개합니다.">
<title>건설 | SM그룹 | 모바일</title>
</head>

<body>
    <div id="wrap" class="sub business construction">
        <%@ include file="/include/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>건설</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <!--s: tab_wrap -->
                <div class="tab_wrap">
                    <p class="selected">건설</p>
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
                            <a href="leisure.do">레저</a>
                        </li>
                    </ul>
                </div>
                <!--//e: tab_wrap -->
                <div class="cont_tit">
                    <h3>앞선 기술, 혁신적 도전으로<br>최고의 가치 실현</h3>
                    <p class="sub_tit">SM그룹은 풍부하고 다양한 경험과 신공법, 신기술을 바탕으로 세계적으로 인정받는 글로벌 건설사로 거듭나고자 합니다.</p>
                </div>
                <div class="section">
                    <div class="thumb_wrap">
                        <img src="/resource/mobile/images/business/img_business_construction.jpg" alt="">
                    </div>
                    <!-- s: list -->
                    <ul class="board_list">
                        <c:choose>
                            <c:when test="${fn:length(list) > 0}">
                                <c:forEach items="${list }" var="row">
                                <li>
                                    <c:choose>
                                        <c:when test="${row.STATUS_SUB=='Y' }">
                                        <a href="view.do?IDX=${row.IDX }">
                                        </c:when>
                                        <c:otherwise>
                                            <c:choose>
                                                <c:when test="${not empty row.URL}">
                                                <a href="${row.URL }">
                                                </c:when>
                                                <c:otherwise>
                                                <a href="#none">
                                                </c:otherwise>
                                            </c:choose>
                                        </c:otherwise>
                                    </c:choose>
                                        <p class="cate">
                                            ${row.NAME }
                                            <c:if test="${not empty row.NAME_SUB}">
                                            <span>${row.NAME_SUB }</span>
                                            </c:if>
                                        </p>
                                        <p class="tit">${row.DESCRIPTION }</p>
                                    </a>
                                </li>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                    <!--// e: list -->
                </div>
                <div class="section sec02">
                    <div class="tit_wrap">
                        <h4>SM그룹 건설브랜드</h4>
                    </div>
                    <!-- s: list -->
                    <ul class="board_list">
								<c:choose>
									<c:when test="${fn:length(brand) > 0}">
										<c:forEach items="${brand }" var="row">
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
		                                            <p class="cate">
		                                            	${row.NAME }
														<c:if test="${not empty row.NAME_SUB}">
														<span>${row.NAME_SUB }</span>
														</c:if>
		                                            </p>
		                                            <p class="tit">${row.DESCRIPTION }</p>
		                                    </a>
		                                </li>
										</c:forEach>
									</c:when>
									<c:otherwise>
									</c:otherwise>
								</c:choose>
                    </ul>
                    <!--// e: list -->
                </div>
                <%@ include file="/include/mobile/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/mobile/footer.jsp" %>
	</div>
	<%@ include file="/include/mobile/common.jsp" %>
    <script>
        smGroup.stickyGnb();
        smGroup.tab();
    </script>
</body>
</html>