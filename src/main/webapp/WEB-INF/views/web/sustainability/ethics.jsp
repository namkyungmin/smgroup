<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/include/header.jsp" %>
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 윤리경영, 윤리경영, SM 윤리경영, 에스엠 윤리경영, 에스엠그룹, 에스엠그룹 윤리경영">
<meta name="description" content="SM그룹 윤리경영 페이지입니다. SM그룹은 모든 경영활동에서 가치 판단의 기준을 정하고 실천해 오고 있습니다.">
<title>윤리경영 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="sub sustainability ethics">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2><span>윤리경영</span></h2>
				<p class="txt1">Ethical Management</p>
            </div>
            <!--// e: title -->
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">홈</li>
						<li class="depth1">지속가능경영</li>
						<li class="depth2">윤리경영</li>
					</ul>
					<!--// e: breadcrumb -->
					<div class="tab_wrap">
						<ul>
							<li>
								<a href="ethics.do" class="on">윤리경영</a>
							</li>
							<li>
								<a href="partnership.do">상생경영</a>
							</li>
							<li>
								<a href="environment.do">환경경영</a>
							</li>
							<li>
								<a href="social-contribution.do">사회공헌</a>
							</li>
						</ul>
					</div>
				</div>
                <div class="cont_tit">
                    <h3>SM그룹 조직 구성원이 지켜야 할 윤리강령을 제정하고 실천합니다.<br />건전한 윤리적 규율 안에서 경영성공을 추구합니다.</h3>
                </div>
				<div class="sec1 cardnews section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/images/sustainability/ethics_cardnews_thumb1.jpg"  class="thumb" alt="">
							<a href="#none">
								<h4>윤리강령 실천 4단계</h4>
								<p class="txt1">기업의 윤리적 가치를 명확하게 정의하고 구체적인 행동 지침을 설계하였습니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/ethics_cardnews_thumb2.jpg"  class="thumb" alt="">
							<a href="#none">
								<h4>경영윤리교육 프로그램</h4>
								<p class="txt1">SM그룹은 경영윤리교육 프로그램을 통해 구성원들의 윤리의식을 고취시키고 도덕적 가치에 기초를 두고 의사결정하고 행동하도록 하고 있습니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/ethics_cardnews_thumb3.jpg"  class="thumb" alt="">
							<a href="#none">
								<h4>준법경영 및 정책 이행</h4>
								<p class="txt1">청렴 캠페인 : "선물(금품·향응 등) 안 주고 안 받기" 실천 운동</p>
							</a>
						</div>
					</div>
				</div>
                <div class="sec2 section section_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>윤리규범</h4>
							<p class="sub_tit">SM그룹 윤리규범은 모든 임직원이 경영현장에서 기본적으로 지켜야 할 올바른 행동과<br />가치판단의 기준을 제공하는 것을 목적으로 합니다.</p>
						</div>
						<div class="inner_cont">
							<p class="thumbnail"><img src="/resource/images/sustainability/ethics_sec2_img1.jpg" alt="2020윤리규범"></p>
							<a href="/resource/file/SMGROUP_Code_of_Ethics_KR.pdf" class="common_btn download" target="_blank" title="새 창으로 바로가기"><span>다운로드</span></a>
						</div>
					</div>
				</div>
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