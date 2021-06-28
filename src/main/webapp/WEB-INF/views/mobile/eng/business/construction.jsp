<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/common.tld"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/include/eng/mobile/header.jsp" %>
<meta name="keywords" content="SM Group, SM Group Businees, SM Group Construction, Construction, Businees, SM Construction">
<meta name="description" content="This page describes SM Group’s construction business. We introduce many subsidiary companies in the construction sector.">
<title>Construction  | SM Group | Mobile</title>
</head>

<body>
    <div id="wrap" class="sub business construction">
        <%@ include file="/include/eng/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>Construction</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
                <!--s: tab_wrap -->
                <div class="tab_wrap">
                    <p class="selected">Construction</p>
                    <ul>
                        <li>
                            <a href="manufacturing.do">Manufacturing</a>
                        </li>
                        <li>
                            <a href="construction.do">Construction</a>
                        </li>
                        <li>
                            <a href="shipping-industry.do">Shipping Industry</a>
                        </li>
                        <li>
                            <a href="media-service.do">Media&middot;Service</a>
                        </li>
                        <li>
                            <a href="leisure.do">Leisure</a>
                        </li>
                    </ul>
                </div>
                <!--//e: tab_wrap -->
                <div class="cont_tit">
                    <h3>Advanced technology, innovative challenge, realization of maximum potential and superior value</h3>
                    <p class="sub_tit">SM Group wants to become a globally recognized global construction company based on its rich and diverse experience, new construction methods, and new technologies.</p>
                </div>
                <div class="section">
                    <div class="thumb_wrap">
                        <img src="/resource/eng/mobile/images/business/img_business_construction.jpg" alt="">
                    </div>
                    <!-- s: list -->
                    <ul class="board_list">
                        <c:choose>
                            <c:when test="${fn:length(list) > 0}">
                                <c:forEach items="${list }" var="row">
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
                                        <p class="cate">
                                            ${row.NAME_EN }
                                            <c:if test="${not empty row.NAME_SUB_EN}">
                                            <span>${row.NAME_SUB_EN }</span>
                                            </c:if>
                                        </p>
                                        <p class="tit">${row.DESCRIPTION_EN }</p>
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
                        <h4>SM Group’s Construction<br>Brands</h4>
                    </div>
                    <!-- s: list -->
                    <ul class="board_list">
                        <c:choose>
                            <c:when test="${fn:length(brand) > 0}">
                                <c:forEach items="${brand }" var="row">
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
                                        <p class="cate">
                                            ${row.NAME_EN }
                                            <c:if test="${not empty row.NAME_SUB_EN}">
                                            <span>${row.NAME_SUB_EN }</span>
                                            </c:if>
                                        </p>
                                        <p class="tit">${row.DESCRIPTION_EN }</p>
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
                <%@ include file="/include/eng/mobile/floating.jsp" %>
            </div>
        </div>
        <%@ include file="/include/eng/mobile/footer.jsp" %>
	</div>
	<%@ include file="/include/eng/mobile/common.jsp" %>
    <script>
        smGroup.stickyGnb();
        smGroup.tab();
    </script>
</body>
</html>