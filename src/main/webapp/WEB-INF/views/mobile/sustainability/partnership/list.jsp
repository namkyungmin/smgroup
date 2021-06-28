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
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 상생경영, 상생경영, SM 상생경영, 에스엠 상생경영, 에스엠그룹, 에스엠그룹 상생경영">
<meta name="description" content="SM그룹 상생경영 페이지입니다. SM그룹은 협력회사의 성장을 그룹의 뿌리로 보고 있으며 협력회사와의 동반 성장을 추구합니다.">
<title>상생경영 | SM그룹 | 모바일</title>
</head>

<body>
    <div id="wrap" class="sub sustainability partnership">
        <%@ include file="/include/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>상생경영</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
				<!--s: tab_wrap -->
				<div class="tab_wrap">
                    <p class="selected">상생경영</p>
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
                    <h3>SM그룹은 협력회사의 성장을 우리 그룹의 경쟁력 원천이자 뿌리로 보고 있으며 협력회사와의 동반 성장을 추구합니다.</h3>
                </div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/mobile/images/sustainability/partnership_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">동반성장 가치실현과 성과공유는 <br>기업의 지속가능 성장을 위한 <br>뿌리 입니다. </p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/mobile/images/sustainability/partnership_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">아름다운 동반자 관계를 통한 <br>자부심과 경쟁력 강화를 <br>목표로 합니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/mobile/images/sustainability/partnership_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">사회적책임을 다하는 <br>존중받는 기업을 <br>경영이념으로 합니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/mobile/images/sustainability/partnership_cardnews_thumb4.jpg" class="thumb" alt="">
							<a href="view.do#page4">
								<p class="txt1">우리가 만들어 갈 <br>내일의 희망과 결실도 협력사 여러분과 함께 합니다.</p>
							</a>
						</div>
					</div>
				</div>
                <div class="sec2 section sec_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>하도급 불공정거래행위<br> 신고센터</h4>
							<p class="sub_tit">협력사의 고충을 해결하고, SM그룹 임직원들의 불공정 거래 행위를 예방함으로써 바람직한 하도급거래 관계 확립을 위한 하도급 불공정 거래행위 신고센터를 운영하고 있습니다. SM그룹은 늘 여러분의 곁에 있겠습니다.</p>
						</div>
					</div>
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