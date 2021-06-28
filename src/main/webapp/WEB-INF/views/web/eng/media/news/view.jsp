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
<%@ include file="/include/eng/header.jsp" %>
<meta name="keywords" content="SM그룹, 미디어, SM그룹 보도자료, 보도자료, 뉴스, SM그룹 뉴스, SM 보도자료, 에스엠 보도자료, 에스엠그룹, 에스엠그룹 보도자료, 에스엠그룹 뉴스">
<meta name="description" content="SM그룹 보도자료 페이지입니다. SM그룹의 다양한 소식을 전합니다.">
<title>보도자료 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="sub media news view">
        <%@ include file="/include/eng/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>보도자료</h2>
            </div>
            <!--// e: title -->
            <!-- s: breadcrumb -->
            <ul class="breadcrumb">
                <li class="home">홈</li>
                <li class="depth1">미디어</li>
                <li class="depth2">보도자료</li>
            </ul>
            <!--// e: breadcrumb -->
            <!-- s: contents -->
            <div id="contents">
                <div class="section">
                    <div class="board_view">
                        <div class="top_area">
                            <div class="row_tit">
                                <h3 class="tit">${map.TITLE}</h3>
                                <div class="right_wrap">
                                    <span class="date">${fn:replace(fn:substring(map.UPDA_DTM,0,10),'-','.')}</span>
                                    <span class="category">${map.SECTION}</span>
                                </div>
                            </div>
                        </div>
                        <div class="cont_area">
                            <p>
                                ${map.CONTENTS}
                            </p>
                            <c:choose>
                            <c:when test="${fn:length(map.VIDEO)>0}">
                            <div class="btn_wrap">
                                <a href="${map.VIDEO}" class="common_btn outlink" target="_blank">
                                    <span>기사보기</span>
                                </a>
                            </div>
                            
                            </c:when>
                            </c:choose>
                        </div>
                        <div class="bottom_area">
                            <div class="btn_area">
                                <a href="list.do" class="common_btn type01">
                                    <span>LIST</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <%@ include file="/include/eng/floating.jsp" %>
            </div>
            <!--// e: contents -->
        </div>
        <%@ include file="/include/eng/footer.jsp" %>
	</div>
	<%@ include file="/include/eng/common.jsp" %>
    <script>
        smGroup.stickyGnb();
    </script>
</body>
</html>