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
								<h2>Social Contribution</h2>
							</div>
							<div class="sec_txt">
								<p class="txt1">더불어 함께하는 세상을 <br class="b">만들어 나갑니다.</p>
								<p class="txt2">SM그룹은 인권과 환경에 대한 관심, 자원봉사 참여 등을 통해 기업 시민으로서의 <br class="n">책임과 <br class="b">역할을 다하는 것을 중요한 경영목표로 하고 있으며 이러한 배경을 바탕으로 <br class="n">우리 사회 저소득 <br class="b">취약 계층에 대한 복지 증진을 위해 2011년 삼라희망재단을 <br class="n">설립하여 사회공헌에 이바지 <br class="b">하고 있습니다. </p>
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
								<h2>Share and Spread <br>the Hope</h2>
								<div class="direc" data-motion="staggerType1">
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
								<p class="txt2">SM그룹은 창립 당시부터 사회공헌 활동을 통한 기업의 사회적 책임과 기업의 성장이 <br class="n">호혜적인 관계를 가지고 있다는 것을 <br class="b">인식하고, 자원봉사와 소외계층 주택 무상 제공, <br class="n">시민들의 문화적 삶의 질 향상을 위한 미술관 건립 등 다양한 지원 활동을 통해 <br>사회복지에 기여하고 있습니다. SM그룹의 사회공헌 프로그램은 우리사회의 따뜻한 <br class="n">온정과 사랑을 전달하는 중요한 바탕이 <br class="b">되고 있습니다.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="sec3 section">
					<span id="page3" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner" data-motion="bgType1">
							<div class="inner">
								<div class="sec_tit">
									<h2>Dreaming of a Better Tomorrow</h2>
								</div>
								<div class="sec_txt">
									<p class="txt1">더 나은 세상을 위한 <br>내일의 희망을 키웁니다.</p>
									<p class="txt2">SM그룹은 “더불어 함께 하는 세상을 만드는 나눔 실천” 이라는 비전 아래 다양한 공헌 활동을 <br>통하여 구성원들에게 사회적 책임을 다하고, 나눔문화를 활성화시켜 도움을 필요로 하는 <br>소외계층을 지원하며 더 나은 세상을 만들어 가기 위하여 다양한 분야에서 지속적인 사회공헌 <br>활동을 전개하고 있습니다.</p>
								</div>
							</div>
						</div>
						<div class="sec_inner2 sec_inner">
							<h3>재단 주요사업</h3>
							<ul data-motion="staggerType1">
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