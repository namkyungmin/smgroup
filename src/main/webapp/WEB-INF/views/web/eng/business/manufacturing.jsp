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
<html lang="en">
<head>
<%@ include file="/include/eng/header.jsp" %>
<meta name="keywords" content="SM Group, SM Group Businees, SM Group Manufacturing, Manufacturing, Businees, SM Manufacturing">
<meta name="description" content="This page describes SM Group’s manufacturing business. We introduce many subsidiary companies in the manufacturing sector.">
<title>Manufacturing  | SM Group</title>
</head>

<body>
    <div id="wrap" class="business sub manufacture">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2>
                    SM Group puts the <span>R&amp;D of eco-friendly, high-efficiency products</span><br>
                    as a top priority, and grows around future values.
                </h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">Home</li>
                        <li class="depth1">Business</li>
                        <li class="depth2">Manufacturing</li>
					</ul>
					<!--// e: breadcrumb -->
					<div class="tab_wrap">
                        <ul>
                            <li>
                                <a href="manufacturing.do" class="on">Manufacturing</a>
                            </li>
                            <li>
                                <a href="construction.do">Construction</a>
                            </li>
                            <li>
                                <a href="shipping-industry.do">Shipping Industry</a>
                            </li>
                            <li>
                                <a href="media-service.do">Media·Service</a>
                            </li>
                            <li>
                                <a href="leisure.do">Leisure</a>
                            </li>
                        </ul>
                    </div>
				</div>
                <div class="cont_tit">
                    <h3>Manufacturing </h3>
                    <p>A better future through relentless research, development, and technology</p>
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
		                                		<c:when test="${row.STATUS_SUB_EN=='Y' }">
		                                		<a href="view.do?IDX=${row.IDX }">
		                                		</c:when>
		                                		<c:otherwise>
                                                    <c:choose>
                                                        <c:when test="${not empty row.URL_EN}">
                                                        <a href="${row.URL_EN }" target="_blank">
                                                        </c:when>
                                                        <c:otherwise>
                                                        <a href="#none">
                                                        </c:otherwise>
		                                	        </c:choose>
		                                		</c:otherwise>
		                                	</c:choose>
		                                        <div class="thumb_area">
		                                            <img src="${row.PATH}${row.THUMB_EN }" alt="">
		                                        </div>
		                                        <div class="txt_area">
		                                            <p class="cate">
		                                            	${row.NAME_EN }
														<c:if test="${not empty row.NAME_SUB_EN}">
														<span>${row.NAME_SUB_EN }</span>
														</c:if>
		                                            </p>
		                                            <p class="tit">${row.DESCRIPTION_EN }</p>
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
                <%@ include file="/include/eng/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/eng/footer.jsp" %>
	</div>
	<%@ include file="/include/eng/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>