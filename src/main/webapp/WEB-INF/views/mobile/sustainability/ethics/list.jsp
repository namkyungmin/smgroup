<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/common.tld"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/include/mobile/header.jsp" %>
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 윤리경영, 윤리경영, SM 윤리경영, 에스엠 윤리경영, 에스엠그룹, 에스엠그룹 윤리경영">
<meta name="description" content="SM그룹 윤리경영 페이지입니다. SM그룹은 모든 경영활동에서 가치 판단의 기준을 정하고 실천해 오고 있습니다.">
<title>윤리준법경영 | SM그룹 | 모바일</title>
</head>

<body>
    <div id="wrap" class="sub sustainability ethics">
        <%@ include file="/include/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>윤리준법경영</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
				<!--s: tab_wrap -->
				<div class="tab_wrap">
                    <p class="selected">윤리준법경영</p>
                    <ul>
                        <li>
							<a href="/mobile/sustainability/ethics/list.do">윤리준법경영</a>
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
					<h3>SM그룹 윤리준법경영을 실천하기 위해 행동강령 및 지침을 제정·운영하며 잠재적 규정 및 법령 위반사항을 신고할 수 있도록 신고센터를 운영하고 있습니다.</h3>
				</div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/mobile/images/sustainability/ethics_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">고객과의 건강하고 행복한 동행을 위해 윤리준법경영을 추구합니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/mobile/images/sustainability/ethics_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">임직원이 지켜야 할 행동강령 및 행동지침을 제정하여 법규준수 문화를 확립해 나가고 있습니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/mobile/images/sustainability/ethics_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">익명성이 보장된 내부고발 시스템을 운영하고 있습니다.</p>
							</a>
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