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
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 환경경영, 환경경영, SM 환경경영, 에스엠 환경경영">
<meta name="description" content="SM그룹 환경경영 페이지입니다. SM그룹은 환경적 지속가능성 개선을 위해 녹색성장을 추구하고 있습니다.">
<%@ include file="/include/header.jsp" %>
<link rel="stylesheet" href="/resource/css/sustainability.css">
<title>환경경영 | SM그룹</title>
<style>

</style>
</head>

<body>
    <div id="wrap" class="sub sustainability sustainability_view environment_view">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container">
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">홈</li>
						<li class="depth1">지속가능경영</li>
						<li class="depth2">환경경영</li>
					</ul>
					<!--// e: breadcrumb -->
				</div>
				<div id="anchorMenu" class="anchor_menu">
					<ul>
						<li><a href="#page1">녹색경영실천방향</a></li>
						<li><a href="#page2">녹색경영활동</a></li>
						<li><a href="#page3">인증현황</a></li>
					</ul>
					<a href="#" class="page_top">맨 위로 가기</a>
				</div>
				<div class="sec1 section">
					<span id="page1" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_tit" data-motion="scaleType1">
								<div class="img_box"><img src="/resource/images/sustainability/environment/view_sec1_img1.jpg" alt=""></div>
								<div class="system" data-motion="staggerType1">
									<h3 data-role="m_elm">녹색경영시스템 실천방향</h3>
									<ul class="system_lst">
										<li data-role="m_elm"><span>책임 있는 <br>소비와 생산</span></li>
										<li data-role="m_elm"><span>환경 법규 <br>준수</span></li>
										<li data-role="m_elm"><span>사회적 <br>가치 기여</span></li>
									</ul>
								</div>
							</div>
							<div class="sec_txt">
								<p class="txt1">
									고객의 풍요로운 삶을 위한<br>품질, 환경, 안전 활동을<br>기본으로 인식 합니다.
								</p>
								<p class="txt2">SM그룹은 환경 규제와 법규를 준수하는 소극적 대응을 넘어, 조직
									<br>구성원들의 활동(제품, 서비스 및 절차)으로 고객에게 친환경 가치를
									<br>제공하고 지속가능한 미래를 선도하는 녹색경영을 실천하고 
									<br>있습니다.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="sec2 section">
					<span id="page2" class="anchor"></span>
					<div class="anchor_wrap">
						<div class="sec_inner1 sec_inner">
							<div class="sec_txt">
								<p class="txt1">친환경 건축, 친환경에너지 개발 등을 <br class="b">통해 저탄소 녹색경영을 선도하는 <br class="b">기업이 되겠습니다. </p>
								<p class="txt2">SM그룹의 전 계열사는 녹색경영 활동 및 환경 캠페인 동참 등<br>녹색경영을 통한 사회적 환경경영 문화 조성에 적극 협조하고<br>있습니다.</p>
							</div>
						</div>
						<div class="sec_inner2 sec_inner"  data-motion="bgType1">
							<div class="inner">
								<div class="right">
									<h3>Activity</h3>
									<div class="slide_wrap programs">
										<div class="slide_cont swiper-wrapper">
											<div class="slide swiper-slide">
												<p class="txt1">온실가스 배출 감축, 폐기물 발생
													  <br>감량으로 녹색경영 선도</p>
											</div>
											<div class="slide swiper-slide">
												<p class="txt1">친환경자재 연구활동 및 선정기준 <br>수립으로 쾌적한 실내공기 제공</p>
											</div>
											<div class="slide swiper-slide">
												<p class="txt1">녹색경영 추진 및 녹색기업 선도로 <br>기업 경쟁력 확보</p>
											</div>
											<div class="slide swiper-slide">
												<p class="txt1">건설업 에너지 및 자원절약에 기여</p>
											</div>
											<div class="slide swiper-slide">
												<p class="txt1">해양환경 보호 및 항만 대기오염 방지</p>
											</div>
											<div class="slide swiper-slide">
												<p class="txt1">지역사회에 대한 지원 사업 및 일자리 창출</p>
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
								<div class="img_box"><img src="/resource/images/sustainability/environment/view_sec3_img1.jpg" alt=""></div>
							</div>
							<div class="sec_txt">
								<p class="txt1">사업 활동에 의한 환경 영향을 최소화<br class="b">하기 위하여 노력하고 있습니다.</p>
								<p class="txt2">SM그룹은 국내 및 관련 국가의 안전보건·환경 관련 법규 준수 및
									<br class="b">이해관계자의 견해를 능동적으로 수용하고 친환경 요소의 발굴과
									<br class="b">친환경 문화의 정착, 기후변화 대응을 위한 에너지 저감 활동의
									<br class="b">자발적 참여를 지속적으로 실천해가고 있습니다. 그룹 임직원들은
									<br class="b">고객 최고의 가치 창출과 풍요로운 삶을 영위할 수 있도록 품질,
									<br class="b">환경, 안전을 기업 경영활동의 기본으로 인식하고 역량과 열정을
									<br class="b">다하여 지속적인 개선활동을 성실히 수행해 나갈 것입니다.</p>
								<div class="btn_area">
									<a href="/resource/file/SMGROUP_Environment_Management_KR.pdf" target="_blank" class="btn_default download_btn">환경경영 다운로드</a>
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