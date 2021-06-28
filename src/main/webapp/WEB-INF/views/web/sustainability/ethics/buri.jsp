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
<meta name="keywords" content="SM그룹, 지속가능경영, SM그룹 윤리경영, 윤리경영, SM 윤리경영, 에스엠 윤리경영, 에스엠그룹, 에스엠그룹 윤리경영">
<meta name="description" content="SM그룹 윤리경영 페이지입니다. SM그룹은 모든 경영활동에서 가치 판단의 기준을 정하고 실천해 오고 있습니다.">
<title>윤리경영 | SM그룹</title>
<style>
/* font */
/*
@font-face {
	font-family: 'AritaDotum';
	font-style: normal;
	font-weight: 400;
	src: url(/resource/font/Arita-dotum-Medium.eot);
	src: url(/resource/font/Arita-dotum-Medium.eot?#iefix) format('embedded-opentype'),
	url(/resource/font/Arita-dotum-Medium.woff) format('woff');
}
*/
@font-face {
	font-family: 'AritaDotum';
	font-style: normal;
	font-weight: 400;
	src: url(/resource/font/Arita-buriM-subset.woff) format('woff');
}
@font-face {
	font-family: 'Exo';
	font-style: normal;
	font-weight: 400;
	src: url(/resource/font/Exo-Regular.eot);
	src: url(/resource/font/Exo-Regular.eot?#iefix) format('embedded-opentype'),
	url(/resource/font/Exo-Regular.woff) format('woff');
} 
@font-face {
	font-family: 'Exo';
	font-style: normal;
	font-weight: 600;
	src: url(/resource/font/Exo-Medium.eot);
	src: url(/resource/font/Exo-Medium.eot?#iefix) format('embedded-opentype'),
	url(/resource/font/Exo-Medium.woff) format('woff');
} 

/*h2{-webkit-writing-mode: vertical-lr; -ms-writing-mode: tb-lr;}*/

#header{background:#fff; border-bottom:1px solid #e8ebf0;} 
#header .bg{border-bottom:1px solid #eee;}
#header .header .logo{background-image:url(/resource/images/common/logo.png);}
#header .header .gnb_wrap .gnb .depth1 > a{color:#333;}
#header .header .util_wrap > div, #header .header .util_wrap > div > a, #header .header .util_wrap .btn.lang.on{border-color:#d9d9d9;}
#header .header .util_wrap > div > a, #header .header .util_wrap .btn.lang.on a{color:#666;}
#header .header .util_wrap .btn.lang a.first{ background-image:url(/resource/images/common/bg_select_g.png); }
#header .header .util_wrap .btn.subsidiary a{background-image:url(/resource/images/common/bg_btn_subsidary.png);}
#container{padding-top:83px;}

.sustainability_view .breadcrumb{width:1400px; margin-bottom:120px;}
.sustainability_view .anchor_menu{overflow:hidden; position:fixed; right:-220px; top:50%; z-index:10000; width:500px; height:60px; margin-top:-30px; background:#4a4d4f; transform:rotate(90deg);}
.sustainability_view .anchor_menu ul{float:left; width:439px; padding:0 30px 0 10px; box-sizing:border-box; font-size:0; vertical-align:middle;}
.sustainability_view .anchor_menu li{display:inline-block;}
.sustainability_view .anchor_menu li:before{display:inline-block; width:6px; height:6px; background:#6c6c6c; border-radius:100%; vertical-align:middle; content:"";}
.sustainability_view .anchor_menu li:first-child:before{content:none;}
.sustainability_view .anchor_menu li > a{display:inline-block; margin:0 20px; font-size:14px; line-height:60px; vertical-align:middle; color:#fff;}
.sustainability_view .anchor_menu > a{overflow:hidden; display:block; float:left; width:60px; height:60px; background:url(/resource/images/sustainability/ethics/view_top_btn.png) 0 0 no-repeat; vertical-align:middle; text-indent:-9999px;}

.sustainability_view br.n{display:none;}
.sustainability_view .section{overflow:hidden; width:100%; margin-bottom:240px;}
.sustainability_view .section_inner1{margin-bottom:180px;}
.sustainability_view .sec_tit h2{font-family:'Exo'; font-size:18px; font-weight:400; letter-spacing:12px;}
.sustainability_view .sec_txt .txt1{margin-bottom:50px; font-size:38px; line-height:55px; color:#333;}
.sustainability_view .sec_txt .txt2{font-family:'AritaDotum'; font-size:16px; font-weight:400; line-height:40px; color:#666;}

.ethics_view .sec1 .sec_inner1{width:1400px; margin:0 auto 180px;}
.ethics_view .sec1 .sec_inner1:after{display:block; clear:both; content:"";}
.ethics_view .sec1 .sec_inner1 .sec_tit{float:right; position:relative; width:706px; height:692px;}
.ethics_view .sec1 .sec_inner1 .sec_tit h2{position:absolute; top:546px; left:-80px; color:#37608e;}
.ethics_view .sec1 .sec_inner1 .img_box{overflow:hidden; position:absolute; left:0; top:0; width:957px; height:692px;}
.ethics_view .sec1 .sec_inner1 .sec_txt{float:left; width:694px;}
.ethics_view .sec1 .sec_inner2 h3{height:400px; padding-top:204px; margin-bottom:80px; background:url(/resource/images/sustainability/ethics/view_sec1_bg1.jpg) center 0 no-repeat; font-size:30px; box-sizing:border-box; text-align:center; color:#fff;;}
.ethics_view .sec1 .sec_inner2 .practice_lst{overflow:hidden; width:1400px; margin:0 auto;}
.ethics_view .sec1 .sec_inner2 .practice_lst li{float:left; width:25%; border-right:1px solid #93c69b; font-family:'AritaDotum'; font-size:16px; box-sizing:border-box; text-align:center; letter-spacing:-1px; line-height:30px;}
.ethics_view .sec1 .sec_inner2 .practice_lst li:first-child{border-left:1px solid #93c69b;}
.ethics_view .sec1 .sec_inner2 .practice_lst li:before{content:"1"; display:block; margin-bottom:60px; font-family:'Exo'; font-size:60px; line-height:1; color:#b5afa0;}
.ethics_view .sec1 .sec_inner2 .practice_lst li:nth-child(1):before{content:"1";}
.ethics_view .sec1 .sec_inner2 .practice_lst li:nth-child(2):before{content:"2";}
.ethics_view .sec1 .sec_inner2 .practice_lst li:nth-child(3):before{content:"3";}
.ethics_view .sec1 .sec_inner2 .practice_lst li:nth-child(4):before{content:"4";}
.ethics_view .sec1 .sec_inner2 .practice_lst li:nth-child(4):before{content:"4";}
</style>
</head>

<body>
    <div id="wrap" class="sub sustainability sustainability_view ethics_view">
        <%@ include file="/include/gnb.jsp" %>
        <div id="container">
            <div id="contents">
				<div class="contents_top">
					<!-- s: breadcrumb -->
					<ul class="breadcrumb">
						<li class="home">홈</li>
						<li class="depth1">지속가능경영</li>
						<li class="depth2">윤리경영</li>
					</ul>
					<!--// e: breadcrumb -->
				</div>
				<div class="anchor_menu">
					<ul>
						<li><a href="#">윤리강령4단계</a></li>
						<li><a href="#">교육프로그램</a></li>
						<li><a href="#">준법경영/정책이행</a></li>
					</ul>
					<a href="#" class="page_top">맨 위로 가기</a>
				</div>
				<div class="sec1 section">
					<div class="sec_inner1 sec_inner">
						<div class="sec_tit">
							<div class="img_box"><img src="/resource/images/sustainability/ethics/view_sec1_img1.jpg" alt=""></div>
							<h2>Ethical Management</h2>
						</div>
						<div class="sec_txt">
							<p class="txt1">
								고객중심의 경영실천을 통해 <br />공유가치창출을 목표로 합니다.
							</p>
							<p class="txt2">
								SM그룹은, 고객중심 경영의 실천을 통하여 고객과 협력사에게는 함께 하고 싶은 회사, <br class="b">임직원에게는 근무하고 싶은 회사를 만들어, 새로운 가치를 더 많이 만들어 내는 <br class="b">‘공유가치창출(CSV_Creating Shared Value)’을 목표로, 국가와 사회에 기여하기 <br class="b">위하여, 조직 구성원이 지켜야 할 올바른 행동과 가치판단의 기준으로 본 윤리강령을 <br class="b">제정하고 실천토록 하고 있습니다.</p>
						</div>
					</div>
					<div class="sec_inner2 sec_inner">
						<h3>Practice 4 Steps</h3>
						<ol class="practice_lst">
							<li>기업의 윤리적 가치를 명확하게 <br class="n">정의하고 <br class="b">구체적인 행동 지침을 <br class="n">설계하였습니다.</li>
							<li>윤리적 행동에 대한 개인적 책임과 <br class="n">책무를 <br class="b">구체적으로 명시하여 <br class="n">규정하였습니다.</li>
							<li>구체적 관행을 감독하기 위한 <br class="b"><br class="n">내부통제 시스템을 <br class="n">구축하였습니다.</li>
							<li>올바른 윤리적 행동의 강화와 <br class="n">비윤리적 행동을 <br class="b">처벌하기 위한 <br class="n">절차를 마련하였습니다.</li>
						</ol>
					</div>
				</div>
				<!--
				<div class="sec2 section">
					<div class="sec_inner1">
						<div class="sec_tit">
							<h2>Ethical Training</h2>
						</div>
						<div class="sec_txt">
							<p class="txt1"><strong>도덕적 가치에 기초를 둔 바람직한 의사결정을 지향합니다.</strong></p>
							<p class="txt2">윤리교육은 윤리경영에 있어 가장 기본이며 필수적 요소입니다. 윤리적 문제에 부딪혔을 때 어떻게 행동하는 것이 바람직한 것인가를 가르쳐 줍니다. SM그룹은 경영윤리교육 프로그램을 통해 구성원들의 윤리의식을 고취시키고 도덕적 가치에 기초를 두고 의사결정하고 행동하도록 하고 있습니다. </p>
						</div>
					</div>
					<div class="sec_inner2">
						<div class="inner">
							<div class="program">
								<h3></h3>
								<div class="slide_wrap">
									<div class="slide_cont">
										<div class="slide">
											<dl>
												<dt>윤리적 의사결정을 위한 교육 프로그램</dt>
												<dd>윤리적 딜레마 상황에서 윤리결정 모델을 이용하는 사고 훈련으로 건전한 결정을 하는 데 도움이 됩니다.</dd>
											</dl>
										</div>
										<div class="slide">
											<dl>
												<dt>업무 부서별 윤리교육 프로그램</dt>
												<dd>한 기업 내에서 각자 맡고 있는 부서별로 요구되는 윤리경영 내용이 다르므로 각 케이스에 맞춘 교육을 진행합니다.</dd>
											</dl>
										</div>
										<div class="slide">
											<dl>
												<dt>직급별 윤리교육 프로그램</dt>
												<dd>임직원의 직급에 따라 달라지는 의사결정의 중요도에 맞춰 교육함으로써 해당 직위에 맞는 역할 수행을 돕습니다.</dd>
											</dl>
										</div>
										<div class="slide">
											<dl>
												<dt>이해관계자를 위한 교육 프로그램</dt>
												<dd>제3자 리스크가 부각됨에 따라 공급업자, 판매업자, 유통업자, 경영 파트너 등 다양한 이해관계자를 위한 프로그램으로 보급, 확산에 노력합니다. </dd>
											</dl>
										</div>
									</div>
									<div class="slide_control">
										<a href="#" class="slide_prev">이전 슬라이드</a><span class="counter"><span class="current">1</span> /  <span class="all">4</span></span><a href="#" class="slide_next">다음 슬라이드</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="sec3 section">
					<div class="sec_inner1">
						<div class="sec_tit">
							<h2>Compliance &amp; Implementation</h2>
						</div>
						<div class="sec_txt">
							<p class="txt1"><strong>자발적인 윤리강령 준수로 준법경영 문화확산의 틀을 만들어갑니다.</strong></p>
							<p class="txt2">SM그룹은 기업 경영에 있어서 법령, 규정, 윤리를 바탕으로 내 외부의 위험으로부터 보호하기 위한 컴플라이언스 체계를 운영, 강화하고 있습니다. 또한, 모든 구성원이 준법경영 문화 확산을 위하여 그룹의 내부통제에 따라 리스크로부터 안전하고 신속한 대응을 목표로 상시 가동되고 있습니다.</p>
						</div>
					</div>
					<div class="sec_inner2">
						<h3>Compliance</h3>
						<p class="txt1">SM그룹은 임직원 개개인이 윤리경영을 내재화하여 전 세계 어느 곳에서나 경쟁할 수 있는 지속적인 성장 기반을 마련하고 있습니다. 구성원들의 자발적 윤리강령 준수로 신뢰와 존경 받는 글로벌 기업으로 성장해 나아가겠습니다.</p>
					</div>
					<div class="btn_area">
						<a href="#" target="_blank">윤리경영 다운로드</a>
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
	$(function(){

	});
	</script>
</body>
</html>