<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
<html lang="ko">
<head>
<%@ include file="/include/mobile/header.jsp" %>
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 사회공헌, 사회공헌, SM 사회공헌, 에스엠 사회공헌, 에스엠그룹, 에스엠그룹 사회공헌">
<meta name="description" content="SM그룹 사회공헌 페이지입니다. SM그룹은 사랑과 나눔을 함께하는 그룹 문화를 선도하며 다양한 사회공헌 활동을 운영합니다.">
<title>사회공헌 | SM그룹 | 모바일</title>
</head>

<body>
    <div id="wrap" class="sub sustainability social-contribution">
        <%@ include file="/include/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>사회공헌</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
				<!--s: tab_wrap -->
				<div class="tab_wrap">
                    <p class="selected">사회공헌</p>
                    <ul>
                        <li>
							<a href="/mobile/sustainability/ethics/list.do">윤리경영</a>
						</li>
						<li>
							<a href="/mobile/sustainability/partnership/list.do">상생경영</a>
						</li>
						<li>
							<a href="/mobile/sustainability/environment/list.do">환경경영</a>
						</li>
						<li>
							<a href="/mobile/sustainability/social-contribution/list.do">사회공헌</a>
						</li>
                    </ul>
				</div>
				<!--//e: tab_wrap -->
                <div class="cont_tit">
                    <h3>SM그룹은 더 나은 세상을 위한 내일의 희망을 키웁니다. 도움이 필요한 이웃에 대한 지원으로 삶의 새희망을 전달하는 세상을 만들어 갑니다.</h3>
                </div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/mobile/images/sustainability/social_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">더불어 함께하는 세상을 <br>만들어 나갑니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/mobile/images/sustainability/social_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">삶의 새 희망을 전달하는 <br>세상을 만들어 갑니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/mobile/images/sustainability/social_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">더 나은 세상을 위한 <br>내일의 희망을 키웁니다.</p>
							</a>
						</div>
				</div>
				<!--
                <div class="sec2 section sec_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>사회공헌 소식</h4>
							<p class="sub_tit">SM그룹은 다양한 사회공헌을 통해 사회에 따뜻한 온정을 전달하고자 합니다.</p>
						</div>
						<ul class="board" id="bottom-board">
						</ul>
						<div class="btn_wrap list_btn_area">
							<a href="javascript:void(0);" id="listMore" class="common_btn type01 more" onclick="loadBoard(); return false;"><span>MORE</span></a>
						</div>
					</div>
				</div>
				-->
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