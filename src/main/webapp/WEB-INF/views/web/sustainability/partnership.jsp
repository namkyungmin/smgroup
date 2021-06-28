<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/include/header.jsp" %>
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 상생경영, 상생경영, SM 상생경영, 에스엠 상생경영, 에스엠그룹, 에스엠그룹 상생경영">
<meta name="description" content="SM그룹 상생경영 페이지입니다. SM그룹은 협력회사의 성장을 그룹의 뿌리로 보고 있으며 협력회사와의 동반 성장을 추구합니다.">
<title>상생경영 | SM그룹</title>
</head>

<body>
    <div id="wrap" class="sub sustainability partnership">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container" class="type02">
			<!-- s: title -->
            <div class="page_tit">
                <h2><span>상생경영</span></h2>
				<p class="txt1">Shared Growth Management</p>
            </div>
            <!--// e: title -->
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">홈</li>
						<li class="depth1">지속가능경영</li>
						<li class="depth2">상생경영</li>
					</ul>
					<!--// e: breadcrumb -->
					<div class="tab_wrap">
						<ul>
							<li>
								<a href="ethics.do">윤리경영</a>
							</li>
							<li>
								<a href="partnership.do" class="on">상생경영</a>
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
                    <h3>SM그룹은 협력회사의 성장을 우리 그룹의 경쟁력 원천이자 뿌리로 보고 있으며<br />협력회사와의 동반 성장을 추구합니다.</h3>
                </div>
				<div class="sec1 section">
					<div class="card_news_wrap">
						<div class="box">
							<img src="/resource/images/sustainability/partnership_cardnews_thumb1.jpg"  class="thumb" alt="">
							<a href="#none">
								<h4>SM그룹 동반성장 3단계 로드맵 구축</h4>
								<p class="txt1">각 사업 분야별 협력업체에 대한 지원을 늘려나갈 것이며 잠재역량을 갖춘 협력업체들이 발전할 수 있도록 협업구조를 갖추어 나가도록 하겠습니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/partnership_cardnews_thumb2.jpg"  class="thumb" alt="">
							<a href="#none">
								<h4>SM의 동반성장 추진목표</h4>
								<p class="txt1">협력사들을 진심으로 존중하고 협력사들과의 지속적인 상생발전에 노력하여 SM가족 모두가 최고의 품질 경쟁력을 갖도록 하는데 앞장서겠습니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/partnership_cardnews_thumb3.jpg"  class="thumb" alt="">
							<a href="#none">
								<h4>동반성장을 위한 토대 마련</h4>
								<p class="txt1">우리 모두의 자부심이 되는 희망 동반자 관계를 만드는데 늘 최선을 다하겠습니다.</p>
							</a>
						</div>
						<div class="box">
							<img src="/resource/images/sustainability/partnership_cardnews_thumb4.jpg"  class="thumb" alt="">
							<a href="#none">
								<h4>협력사 제안</h4>
								<p class="txt1">기술경쟁력 제고와 원가절감을 위한 협력사들의 참신한 아이디어와 의견을 청취하고자 “협력사 제안제도”를 운영하고 있습니다.</p>
							</a>
						</div>
					</div>
				</div>
                <div class="sec2 section section_full">
					<div class="sec_inner">
						<div class="tit_wrap">
							<h4>하도급 불공정거래행위 신고센터</h4>
							<p class="sub_tit">협력사의 고충을 해결하고, SM그룹 임직원들의 불공정 거래 행위를 예방함으로써<br />바람직한 하도급거래 관계 확립을 위한 하도급 불공정 거래행위 신고센터를 운영하고 있습니다.<br />SM그룹은 늘 여러분의 곁에 있겠습니다.</p>
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