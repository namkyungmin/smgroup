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
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 사회공헌, 사회공헌, SM 사회공헌, 에스엠 사회공헌, 에스엠그룹, 에스엠그룹 사회공헌">
<meta name="description" content="SM그룹 사회공헌 페이지입니다. SM그룹은 사랑과 나눔을 함께하는 그룹 문화를 선도하며 다양한 사회공헌 활동을 운영합니다.">
<%@ include file="/include/header.jsp" %>
<link rel="stylesheet" href="/resource/css/sustainability.css">
<title>사회공헌 | SM그룹</title>
<style>

</style>
</head>

<body>
    <div id="wrap" class="sub sustainability sustainability_view social_view">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container">
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">홈</li>
						<li class="depth1">지속가능경영</li>
						<li class="depth2">사회공헌</li>
					</ul>
					<!--// e: breadcrumb -->
				</div>
				<div id="anchorMenu" class="anchor_menu">
					<ul>
						<li><a href="#page1">삼라희망재단</a></li>
						<li><a href="#page2">사업추진방향</a></li>
						<li><a href="#page3">사업소개</a></li>
					</ul>
					<a href="#" class="page_top">맨 위로 가기</a>
				</div>
				<div class="sec1 section">
					<span id="page1" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_tit" data-motion="scaleType1">
								<div class="img_box"><img src="/resource/images/sustainability/social/view_sec1_img1.jpg" alt=""></div>
							</div>
							<div class="sec_txt">
								<p class="txt1">더불어 함께하는 세상을 <br class="b">만들어 나갑니다.</p>
								<p class="txt2">SM그룹은 인권과 환경에 대한 관심, 자원봉사 참여 등을 통해 기업 
									<br class="b">시민으로서의 책임과 역할을 다하는 것을 중요한 경영목표로 하고
									<br class="b">있으며 이러한 배경을 바탕으로 우리 사회 저소득 취약 계층에 대한
									<br class="b">복지 증진을 위해 2011년 삼라희망재단을 설립하여 사회공헌에 	
									<br class="b">이바지 하고 있습니다. </p>
								<div class="btn_area">
									<a href="http://www.삼라희망재단.com" target="_blank" class="btn_default link_btn">삼라 희망재단 바로가기</a>
								</div>
							</div>
						</div>
					</div>
				</div>




				<div class="sec2 section">
					<span id="page2" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_tit" data-motion="scaleType1">
								<div class="img_box"><img src="/resource/images/sustainability/social/view_sec2_img1.jpg" alt=""></div>
							</div>
						
							<div class="sec_txt">
								<p class="txt1">삶의 새 희망을 전달하는 세상을 <br>추구합니다.</p>
								<p class="txt2">SM그룹은 창립 당시부터 사회공헌 활동을 통한 기업의 사회적 책임과
									<br class="b">기업의 성장이 호혜적인 관계를 가지고 있다는 것을 인식하고,
									<br class="b">자원봉사와 소외계층 주택 무상 제공, 시민들의 문화적 삶의 질 향상을 
									<br class="b">위한 미술관 건립 등 다양한 지원 활동을 통해 사회복지에 기여하고
									<br class="b">있습니다. SM그룹의 사회공헌 프로그램은 우리사회의 따뜻한 온정과	
									<br class="b">사랑을 전달하는 중요한 바탕이 되고 있습니다.</p>
							</div>
						</div>
						<div class="sec_inner2 sec_inner">
							<div class="inner">
								<h3>Direction</h3>
								<div class="slide_wrap programs">
									<div class="slide_cont swiper-wrapper">
										<div class="slide swiper-slide">
											<dl>
												<dt>사회적 책임 인식과 나눔문화 캠페인</dt>
												<dd>기업의 구성원들에게 사회적 책임을 인식시키고 나눔 문화를 
     											            <br class="b">활성화하여 도움을 필요로 하는 소외계층 지원을 통해 더불어 
											            <br class="b">함께하는 나눔 문화가 정착되도록 하고 있습니다.</dd>
											</dl>
										</div>
										<div class="slide swiper-slide">
											<dl>
												<dt>공익기금 조성 및 기부활동</dt>
												<dd>기부 기업의 이름으로 사회공헌 기금을 조성하여 
										            <br class="b">소외계층과의 연결 및 기부활동을 통해 기업 
											<br class="b">임직원의 자원봉사활동을 장려하고 있습니다.</dd>
											</dl>
										</div>
										<div class="slide swiper-slide">
											<dl>
												<dt>기업 사회공헌 프로그램 전개</dt>
												<dd>사회공헌에 뜻이 있는 기업들에 대해 사회공헌 
												<br class="b">프로그램을 수립해주고, 함께 이를 실천할 수 있도록 
												<br class="b">지원하여 기업의 나눔실천 문화를 확산해 나가고 있습니다.</dd>
											</dl>
										</div>
										<div class="slide swiper-slide">
											<dl>
												<dt>소외계층에 대한 지원 및 자원봉사 활동</dt>
												<dd>복지 소외계층에 대한 후원 및 지원을 통해 수익의 일부를
												<br class="b">사회에 환원하고 있으며, 복지시설 지원사업, 무료급식 
												<br class="b">자원봉사 등 임직원들의 봉사활동을 진행하고 있습니다.</dd>
											</dl>
										</div>
										<div class="slide swiper-slide">
											<dl>
												<dt>지역공동체를 위한 공익사업 지원</dt>
												<dd>지역사회 구성원들에게 휴식 공간 및 쉼터의 역할을 
												<br class="b">제공할 수 있는 쉼터조성사업 및 낙후 지역 생활공간 
												<br class="b">개보수등 주거환경 개선사업을 지원하고 있습니다.</dd>
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





<!--
				<div class="sec2 section">
					<span id="page2" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_tit" data-motion="scaleType1">
								<div class="direc">
									<h3 data-role="m_elm">Direction</h3>
									<ul class="direc_lst">
										<li data-role="m_elm">사회적 책임 인식과 나눔문화 캠페인</li>
										<li data-role="m_elm">공익기금 조성 및 기부활동</li>
										<li data-role="m_elm">기업 사회공헌 프로그램 전개</li>
										<li data-role="m_elm">소외계층에 대한 지원 및 자원봉사 활동</li>
										<li data-role="m_elm">지역공동체를 위한 공익사업 지원</li>
									</ul>
								</div>
							</div>
							<div class="sec_txt">							
								<p class="txt1">삶의 새 희망을 전달하는 세상을 <br>추구합니다.</p>
								<p class="txt2">SM그룹은 창립 당시부터 사회공헌 활동을 통한 기업의 사회적 책임과
									<br class="b">기업의 성장이 호혜적인 관계를 가지고 있다는 것을 인식하고,
									<br class="b">자원봉사와 소외계층 주택 무상 제공, 시민들의 문화적 삶의 질 향상을 
									<br class="b">위한 미술관 건립 등 다양한 지원 활동을 통해 사회복지에 기여하고
									<br class="b">있습니다. SM그룹의 사회공헌 프로그램은 우리사회의 따뜻한 온정과	
									<br class="b">사랑을 전달하는 중요한 바탕이 되고 있습니다.</p>
							</div>
							<div class="img_box" data-motion="scaleType1"><img src="/resource/images/sustainability/social/view_sec2_img1.jpg" alt=""></div>
						</div>
					</div>
				</div>
-->




				<div class="sec3 section">
					<span id="page3" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
								<div class="sec_txt">
									<p class="txt1">더 나은 세상을 위한 <br>내일의 희망을 키웁니다.</p>
									<p class="txt3">SM그룹은 “더불어 함께 하는 세상을 만드는 나눔 실천” 이라는 비전
										<br class="b">아래 다양한 공헌 활동을 통하여 구성원들에게 사회적 책임을
										<br class="b">다하고, 나눔문화를 활성화시켜 도움을 필요로 하는 소외계층을
										<br class="b">지원하며 더 나은 세상을 만들어 가기 위하여 다양한 분야에서
										<br class="b">지속적인 사회공헌 활동을 전개하고 있습니다.</p>
								</div>
								<div class="sec_tit" data-motion="bgType1" >
								</div>
							</div>
						</div>
						<div class="sec_inner2 sec_inner">
							<h3>재단 주요사업</h3>
							<ul>
								<li data-role="m_elm">
									<div class="img_box">
										<img src="/resource/images/sustainability/social/view_sec3_thum1.jpg" alt="">
									</div>
									<span class="txt1">이웃돕기 사업</span>
								</li>
								<li data-role="m_elm">
									<div class="img_box">
										<img src="/resource/images/sustainability/social/view_sec3_thum2.jpg" alt="">
									</div>
									<span class="txt1">복지시설 지원사업</span>
								</li>
								<li data-role="m_elm">
									<div class="img_box">
										<img src="/resource/images/sustainability/social/view_sec3_thum3.jpg" alt="">
									</div>
									<span class="txt1">주거환경 개선사업</span>
								</li>
								<li data-role="m_elm">
									<div class="img_box">
										<img src="/resource/images/sustainability/social/view_sec3_thum4.jpg" alt="">
									</div>
									<span class="txt1">장학금 지원사업</span>
								</li>
								<li data-role="m_elm">
									<div class="img_box">
										<img src="/resource/images/sustainability/social/view_sec3_thum5.jpg" alt="">
									</div>
									<span class="txt1">임직원 자원봉사활동</span>
								</li>
							</ul>
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