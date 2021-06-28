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
<meta name="keywords" content="SM Group, SM Group Businees, SM Group Construction, Construction, Businees, SM Construction">
<meta name="description" content="This page describes SM Group’s construction business. We introduce many subsidiary companies in the construction sector.">
<title>Construction  | SM Group</title>
</head>

<body>
    <div id="wrap" class="business sub construction">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2>
                    SM Group wants to become a globally recognized global construction<br>
                    company based on <span>its rich and diverse experience, new construction</span><br>
                    <span>methods, and new technologies.</span> 
                </h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <div class="contents_top">
					<!-- s: breadcrumb -->
                    <ul class="breadcrumb">
                        <li class="home">Home</li>
                        <li class="depth1">Business</li>
                        <li class="depth2">Construction</li>
                    </ul>
                    <!--// e: breadcrumb -->
					<div class="tab_wrap">
                        <ul>
                            <li>
                                <a href="manufacturing.do">Manufacturing</a>
                            </li>
                            <li>
                                <a href="construction.do" class="on">Construction</a>
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
                    <h3>Construction</h3>
                    <p>Advanced technology, innovative challenge, realization of maximum potential and superior value</p>
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

                    <h4>SM Group’s Construction Brands</h4>
                    <!-- s: list -->
                    <div class="thumb_list">
                        <div class="board_list">
                            <ul class="board">
								<c:choose>
									<c:when test="${fn:length(brand) > 0}">
										<c:forEach items="${brand }" var="row" end="${fn:length(brand)}" varStatus="status">
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
		                                        <div class="thumb_area line">
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