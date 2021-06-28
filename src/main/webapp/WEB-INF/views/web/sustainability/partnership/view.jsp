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
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 상생경영, 상생경영, SM 상생경영, 에스엠 상생경영, 에스엠그룹, 에스엠그룹 상생경영">
<meta name="description" content="SM그룹 상생경영 페이지입니다. SM그룹은 협력회사의 성장을 그룹의 뿌리로 보고 있으며 협력회사와의 동반 성장을 추구합니다.">
<%@ include file="/include/header.jsp" %>
<link rel="stylesheet" href="/resource/css/sustainability.css">
<title>상생경영 | SM그룹</title>
<style>

</style>
</head>

<body>
    <div id="wrap" class="sub sustainability sustainability_view partnership_view">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container">
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">홈</li>
						<li class="depth1">지속가능경영</li>
						<li class="depth2">상생경영</li>
					</ul>
					<!--// e: breadcrumb -->
				</div>
				<div id="anchorMenu" class="anchor_menu">
					<ul>
						<li><a href="#page1">동반성장 3단계</a></li>
						<li><a href="#page2">추진목표</a></li>
						<li><a href="#page3">경영이념</a></li>
						<li><a href="#page4">우리의약속</a></li>
					</ul>
					<a href="#" class="page_top">맨 위로 가기</a>
				</div>
				<div class="sec1 section">
					<span id="page1" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_tit" data-motion="scaleType1">
								<div class="img_box"><img src="/resource/images/sustainability/partnership/view_sec1_img1.jpg" alt=""></div>
							</div>
							<div class="sec_txt">
								<p class="txt1">
									동반성장 가치 실현과 성과 공유는 <br>기업의 지속가능성장을 위한 뿌리입니다. 
								</p>
								<p class="txt2">
									동반성장은 종착지가 정해진 목표가 아니라 끊임없이 과제들을 
									<br class="b">발굴하고, 행동으로 실천해 나가야 하는 연속 과정입니다. SM그룹은
									<br class="b">동반성장에 관한 대내외의 다양한 아이디어와 제도들을 지속적으로
									<br class="b">경영전반에 적극 반영해 나가며, SM가족 모두가 풍요로워지는
									<br class="b">상생협력 문화를 만들어 가겠습니다.</p>
								<div class="roadmap" data-motion="staggerType1">
									<h3 data-role="m_elm">Roadmap 3 Steps</h3>
									<ol class="roadmap_lst">
										<li data-role="m_elm"><span><strong>설계</strong><p>동반성장 과제 발굴과 제도 마련</p></span></li>
										<li data-role="m_elm"><span><strong>시스템 정착화</strong><p>동반성장 시스템  확충</p></span></li>
										<li data-role="m_elm"><span><strong>동반성장 달성</strong><p>전사적 동반성장 가치 실현&middot;성과공유</p></span></li>
									</ol>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="sec2 section">
					<span id="page2" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_txt">
								<p class="txt1">아름다운 동반자 관계를 통한 <br>SM가족의 자부심과 경쟁력 강화를 <br>목표로 합니다.</p>
								<p class="txt3">끊임없는 상생발전 노력을 통해 우리 SM가족 모두가 최고의 품질을
								<br class="b">갖도록 SM그룹이 앞장서겠습니다. 우리가 함께 이룩해 낸 성과가
								<br class="b">SM가족 모두의 자부심이 되고, SM 가족이란 사실이 경쟁력의
								<br class="b">상징이 되는 아름다운 동반자 관계를 만들어 나가겠습니다.</p>
							</div>
						</div>
						<div class="sec_inner2 sec_inner" data-motion="bgType1">
							<div class="inner">
								<div class="right">
									<h3>Our Goal</h3>
									<div class="slide_wrap programs">
										<div class="slide_cont swiper-wrapper">
											<div class="slide swiper-slide">
												<dl>
													<dt>투명하고 공정하게 협력사들과의<br>든든한 신뢰관계를 구축하겠습니다.</dt>
													<dd>동반성장 실천의 주체로서 역량 및 소양을 향상시키고 <br>투명한 윤리경영을  토대로 공정한 거래질서를 확립<br>하겠습니다.</dd>
												</dl>
											</div>
											<div class="slide swiper-slide">
												<dl>
													<dt>보다 나은 성과 창출을 위해 협력사들과<br>끊임없이 소통하고협력하도록 하겠습니다.</dt>
													<dd>적극성과 실행성을 바탕으로 의사소통을 강화하며, <br>파트너십 제도를 통한 정기모임 및 만족도를 조사하여 <br>반영하겠습니다.</dd>
												</dl>
											</div>
											<div class="slide swiper-slide">
												<dl>
													<dt>경쟁력 확보를 위한 <br>지원을 확충하겠습니다.</dt>
													<dd>건설·제조·해운·서비스 등 다방면에 걸친 그룹의 <br>노하우와 자원을 공유하며 협력사들이 더 높은 품질과 경쟁력을 <br>확충하는데 힘차게 응원하겠습니다.</dd>
												</dl>
											</div>
										</div>
										<div class="slide_control">
											<a href="#" class="slide_prev">이전 슬라이드</a><span class="counter"><span class="current">1</span> /  <span class="all">4</span></span><a href="#" class="slide_next">다음 슬라이드</a><span class="autoplay_ctrl"><a href="#" class="play">슬라이드 시작</a><a href="#" class="pause">슬라이드 정지</a></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="sec3 section">
					<span id="page3" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_tit" data-motion="scaleType1">
								<div class="img_box"><img src="/resource/images/sustainability/partnership/view_sec3_img1.jpg" alt=""></div>
							</div>
							<div class="sec_txt">
								<p class="txt1">
									감동경영과 상생경영으로 <br>사회적 책임을 다하는 존중 받는 기업을 <br>경영 이념으로 합니다.
								</p>
								<p class="txt2">
									SM그룹은 상생과 동반성장을 구호로만 외치지 않겠습니다. 
									<br class="b">“만남은 소중해야하고 인연은 아름다워야 한다“라는 옛 성현의
									<br class="b">말씀처럼 협력사들과의 맺어진 소중한 인연을 긴 세월 동안 함께
									<br class="b">하기 위해 SM그룹은 끊임없이 노력하겠습니다. 협력사의 경쟁력이
									<br class="b">우리의 경쟁력이라는 가치 아래 SM그룹은  동반성장을 위한 토대
									<br class="b">마련에 더욱 노력하겠습니다.</p>
								<ul class="ldeology_lst" data-motion="staggerType1">
									<li data-role="m_elm">· 공정한 거래질서 확립</li>
									<li data-role="m_elm">· 상생협력 지원</li>
									<li data-role="m_elm">· 협력사와의 소통강화</li>
									<li data-role="m_elm">· 투명한 윤리경영</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="sec4 section">
					<span id="page4" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_tit" data-motion="scaleType1">
								<div class="img_box"><img src="/resource/images/sustainability/partnership/view_sec4_img1.jpg" alt=""></div>
							</div>
						
							<div class="sec_txt">
								<p class="txt1">우리가 만들어 갈 내일의 희망과 결실도 <br>협력사 여러분과 함께 합니다.</p>
								<p class="txt2">SM그룹 건설부문의 청사진을 제시하고 ‘안전’을 강조한 다양한 연중
									<br class="b">캠페인 실시, 협력사 제안제도 정착 등 동반성장을 목표로 천명한 바
									<br class="b">있습니다. 이에 기술경쟁력 제고, 생산성 향상 및 원가절감 아이디어
									<br class="b">도출을 위한 협력사 제안제도를 운영하여 비용절감은 물론 동반성장
									<br class="b">및 거래 과정에서 건의사항 또는 애로사항도 함께 청취 함으로써
									<br class="b">협력사와의 상생과 발전을 도모하고 있습니다.</p>
							</div>
						</div>
						<div class="sec_inner2 sec_inner">
							<div class="inner">
								<div class="slide_wrap programs">
									<div class="slide_cont swiper-wrapper">
										<div class="slide swiper-slide">
											<dl>
												<dt>품질&middot;안전관리</dt>
												<dd>원가경쟁력 확보를 위한 신공법·신기술·대안공법에 대한 협력사의<br>제안을 통해 품질·안전관리에 반영하고 기술경쟁력을 높여 나가고<br>있습니다. </dd>
											</dl>
										</div>
										<div class="slide swiper-slide">
											<dl>
												<dt>현장경비 효율화</dt>
												<dd>효율적인 공정관리를 위한 현장 시공 프로세스<br>개선사항에 대해청취하고 이를 통한 원가절감을<br>추구하고 있습니다.</dd>
											</dl>
										</div>
										<div class="slide swiper-slide">
											<dl>
												<dt>건의함 운영</dt>
												<dd>업무혁신 제안 뿐 아니라 부당한 업무지시<br>및 강요, 부정부패 사례 신고 등 애로사항에 대한<br>건의함을 운영하고 있습니다.</dd>
											</dl>
										</div>
									</div>
									<div class="slide_control">
										<a href="#" class="slide_prev">이전 슬라이드</a><span class="counter"><span class="current">1</span> /  <span class="all">4</span></span><a href="#" class="slide_next">다음 슬라이드</a><span class="autoplay_ctrl"><a href="#" class="play">슬라이드 시작</a><a href="#" class="pause">슬라이드 정지</a></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
            </div>
        </div>
		<%@ include file="/include/footer.jsp" %>
	</div>
    <%@ include file="/include/common.jsp" %>
	<script src="/resource/js/lib/TweenMax.min.js"></script>
	<script src="/resource/js/lib/ScrollMagic.min.js"></script>
	<script src="/resource/js/lib/animation.gsap.min.js"></script>
	<script src="/resource/js/sustainability.js"></script>
</body>
</html>