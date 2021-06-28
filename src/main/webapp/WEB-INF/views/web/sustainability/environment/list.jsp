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
<%@ include file="/include/header.jsp" %>
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 환경경영, 환경경영, SM 환경경영, 에스엠 환경경영">
<meta name="description" content="SM그룹 환경경영 페이지입니다. SM그룹은 환경적 지속가능성 개선을 위해 녹색성장을 추구하고 있습니다.">
<title>환경경영 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="sub sustainability environment">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2><span>환경경영</span></h2>
				<p class="txt1">Environmental Management</p>
            </div>
            <!--// e: title -->
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">홈</li>
						<li class="depth1">지속가능경영</li>
						<li class="depth2">환경경영</li>
					</ul>
					<!--// e: breadcrumb -->
					<div class="tab_wrap">
						<ul>
							<li>
								<a href="/sustainability/ethics/list.do">윤리경영</a>
							</li>
							<li>
								<a href="/sustainability/partnership/list.do">상생경영</a>
							</li>
							<li>
								<a href="/sustainability/environment/list.do" class="on">환경경영</a>
							</li>
							<li>
								<a href="/sustainability/social-contribution/list.do">사회공헌</a>
							</li>
						</ul>
					</div>
				</div>
                <div class="cont_tit">
                    <h3>SM그룹은 환경적 지속 가능성 개선을 위해 녹색성장을 추구하며<br />녹색경영시스템을 수립, 실행, 유지해 나아가고자 합니다.</h3>
                </div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/images/sustainability/environment_cardnews_thumb1.jpg" class="thumb" alt="">
							<a href="view.do#page1">
								<p class="txt1">고객의 풍요로운 삶을 위한 <br>품질, 환경, 안전 활동을 <br>기본으로 인식 합니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/environment_cardnews_thumb2.jpg" class="thumb" alt="">
							<a href="view.do#page2">
								<p class="txt1">친환경건축/에너지 개발을 통해 <br>저탄소 녹색경영을 <br>선도 하겠습니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/environment_cardnews_thumb3.jpg" class="thumb" alt="">
							<a href="view.do#page3">
								<p class="txt1">사업 활동에 의한 환경 영향을 <br>최소화 하기 위하여 <br>노력하고 있습니다.</p>
							</a>
						</div>
					</div>
				</div>
				<!--
                <div class="sec2 section section_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>수상 및 인증 내역</h4>
							<p class="sub_tit">SM그룹은 사업 활동에 의한 환경 영향을 최소화 하기 위하여 노력하고 있습니다.</p>
						</div>
						<div class="inner_cont">
							<ul class="board" id="bottom-board">
							</ul>
							<div class="list_btn_area">
								<a href="javascript:void(0);" id="listMore" class="common_btn type01" onclick="loadBoard(); return false;"><span>MORE</span></a>
							</div>
						</div>
					</div>
				</div>
				-->
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