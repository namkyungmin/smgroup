<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/common.tld"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/include/mobile/header.jsp" %>
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 환경경영, 환경경영, SM 환경경영, 에스엠 환경경영">
<meta name="description" content="SM그룹 환경경영 페이지입니다. SM그룹은 환경적 지속가능성 개선을 위해 녹색성장을 추구하고 있습니다.">
<title>환경경영 | SM그룹 | 모바일</title>
</head>

<body>
    <div id="wrap" class="sub sustainability environment">
        <%@ include file="/include/mobile/gnb.jsp" %>
        <div id="container">
			<!-- s: title -->
            <div class="page_tit">
                <h2>환경경영</h2>
            </div>
            <!--// e: title -->
            <div id="contents">
				<!--s: tab_wrap -->
				<div class="tab_wrap">
                    <p class="selected">환경경영</p>
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
                    <h3>SM그룹은 환경적 지속 가능성 개선을 위해 녹색성장을 추구하며 녹색경영시스템을 수립, 실행, 유지해 나아가고자 합니다.</h3>
                </div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/mobile/images/sustainability/environment_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">고객의 풍요로운 삶을 위한 <br>품질, 환경, 안전 활동을 <br>기본으로 인식 합니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/mobile/images/sustainability/environment_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">친환경건축/에너지 개발을 통해 <br>저탄소 녹색경영을 선도 하겠습니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/mobile/images/sustainability/environment_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">사업 활동에 의한 환경 영향을 <br>최소화 하기 위하여 노력하고 있습니다.</p>
							</a>
						</div>
					</div>
				</div>
				<!--
                <div class="sec2 section sec_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>수상 및 인증 내역</h4>
							<p class="sub_tit">SM그룹은 사업 활동에 의한 환경 영향을 최소화 하기 위하여 노력하고 있습니다.</p>
						</div>
						<ul class="board" id="bottom-board">
						</ul>
						<div class="btn_wrap list_btn_area">
							<a href="javascript:void(0);" id="listMore" class="common_btn type01" onclick="loadBoard(); return false;"><span>MORE</span></a>
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